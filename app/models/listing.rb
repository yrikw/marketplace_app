class Listing < ApplicationRecord
  belongs_to :category
  belongs_to :measurement
  belongs_to :user
  has_one_attached :picture
  has_many :order, dependent: :destroy

  validates :title, length: {maximum: 20}, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :category, presence: true
  validates :description, presence: true
  validates :quantity, presence: true, numericality: { greater_than: 0 }
  

# Search bar title
scope :get_by_title, ->(title) {
  where("upper(title) LIKE ?", "%#{title.upcase}%")
  }

# Search bar category
  scope :get_by_category, ->(category) {
  where(category: category)}

# Search bar location
def self.find_by_location(location) 
  user_ids = Location.where("upper(suburb) LIKE ?", "%#{location.upcase}%").map{|location| location.profile.user_id}
  Listing.where(user_id: user_ids)
end

end

