class Article < ActiveRecord::Base
  validates :title, :guid, :published_at, :feed_id, :category_id, presence: true
  validates :title, :guid, uniqueness: true

  default_scope { order(published_at: :desc) }

  belongs_to :feed

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
    inverse_of: :article,
    dependent: :destroy
    )
  has_many :saved_for_laters, inverse_of: :article, dependent: :destroy
  has_many :comments, inverse_of: :article, dependent: :destroy


  has_many :users_unread, through: :unread_article_relationships, source: :user
  has_many :users_read, through: :read_article_relationships, source: :user

  def self.create_from_json!(itemHash, feed)
    itemHash = Article.clean_hash(itemHash)

    # descr = itemHash[:description]

    article = Article.new({
      title: itemHash.title,
      author: itemHash.dc_creator,
      guid: itemHash.guid,
      link: itemHash.link,
      description: itemHash.description,
      image_url: feed.image_url,
      published_at: itemHash.pubDate,
      feed_id: feed.id,
      feed_title: feed.title,
      category_id: feed.category_id
    })
    article.save!

    article
  end

  def self.clean_hash(hash)
    unless hash[:guid]
      hash[:guid] = hash[:link]
    end

    unless hash[:pubDate] && !hash[:published]
      hash[:pubDate] = hash[:published]
    end

    unless hash[:description] && !hash[:content]
      hash[:description] = hash[:content]
    end

    hash
  end
end
