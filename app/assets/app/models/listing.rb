class Listing < ApplicationRecord
  belongs_to :category
  belongs_to :measurement
  belongs_to :user
  has_one_attached :picture

# Search by keyword
scope :get_by_title, ->(title) {
  where("upper(title) LIKE ?", "%#{title.upcase}%")
  }
# Search by category
  scope :get_by_category, ->(category) {
  where(category: category)}

# Search by location
  def self.find_by_location(location) 
    user_ids = Location.where("upper(suburb) LIKE ?", "%#{location}%").map{|location| location.profile.user_id}
    Listing.where(user_id: user_ids)
  end 
end

