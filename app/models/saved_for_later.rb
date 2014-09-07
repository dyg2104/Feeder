class SavedForLater < ActiveRecord::Base
  validates :user_id, :article_id, presence: true
  
  belongs_to :user, inverse_of: :saved_for_laters
  belongs_to :article, inverse_of: :saved_for_laters
end
