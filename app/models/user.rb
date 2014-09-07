class User < ActiveRecord::Base
  after_initialize :ensure_session_token
  
  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }
  validates :session_token, presence: true, uniqueness: true

  attr_reader :password
  
  has_many :user_feeds
  has_many(
    :all_read_article_relationships,
    class_name: "ReadArticle",
    inverse_of: :user,
    dependent: :destroy
    )
  has_many(
    :unread_article_relationships,
    -> {where read_status: false},
    class_name: "ReadArticle",
    inverse_of: :user,
    dependent: :destroy
    )
  has_many(
    :read_article_relationships,
    -> {where read_status: true},
    class_name: "ReadArticle",
    inverse_of: :user,
    dependent: :destroy
    )
  has_many :saved_for_laters, inverse_of: :user, dependent: :destroy
  has_many :comments, inverse_of: :user, dependent: :destroy

  has_many :categories, through: :feeds, source: :category
  has_many :feeds, through: :user_feeds, source: :feed
  has_many :all_articles, through: :all_read_article_relationships, source: :article
  has_many :unread_articles, through: :unread_article_relationships, source: :article
  has_many :read_articles, through: :read_article_relationships, source: :article
  has_many :saved_articles, through: :saved_for_laters, source: :article

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)

    return nil if user.nil?
    user.is_password?(password) ? user : nil
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def password=(password)
    return unless password.present?

    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64(16)
    self.save!
    self.session_token
  end

  private

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64(16)
  end

end