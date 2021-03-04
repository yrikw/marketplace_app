class Listing < ApplicationRecord
  belongs_to :category
  belongs_to :measurement
  belongs_to :user
  has_one_attached :picture

# Search bar title
scope :get_by_title, ->(title) {
  where("upper(title) LIKE ?", "%#{title.upcase}%")
  }

# Search bar category
  scope :get_by_category, ->(category) {
  where(category: category)}

end

