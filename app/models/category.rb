class Category < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  default_scope { order(id: :asc) }
  has_many :feeds
end
