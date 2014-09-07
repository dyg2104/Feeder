class Comment < ActiveRecord::Base
  validates :article_id, :user_id, presence: true
  
  belongs_to :user, inverse_of: :comments
  belongs_to :article, inverse_of: :comments
end
