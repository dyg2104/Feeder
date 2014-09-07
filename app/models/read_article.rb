class ReadArticle < ActiveRecord::Base
  validates :user_id, :article_id, presence: true
  
  belongs_to :user, inverse_of: :read_article_relationships
  belongs_to :article, inverse_of: :read_article_relationships

  def change_status!
    self.read_status = true
    self.save!
  end
end
