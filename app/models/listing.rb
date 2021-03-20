class Listing < ApplicationRecord
  belongs_to :category
  belongs_to :measurement
  belongs_to :user
  has_one_attached :picture
  has_many :order, dependent: :destroy

  # validation
  validates :title, length: {maximum: 20}, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :category, presence: true
  validates :description, presence: true
  validates :quantity, presence: true, numericality: { greater_than: 0 }
  

# Title search bar by keyword
scope :get_by_title, ->(title) {
  where("upper(title) LIKE ?", "%#{title.upcase}%")}

# Category search by category select
  scope :get_by_category, ->(category) {
  where(category: category)}

# Category search by category select
scope :get_by_sale, ->(purchased) {
  where(purchased: purchased)}

# Location search by suburb
def self.find_by_location(location) 
  user_ids = Location.where("upper(suburb) LIKE ?", "%#{location.upcase}%").map{|location| location.profile.user_id}
  Listing.where(user_id: user_ids)
end

# Sanitisation
before_save :remove_whitespace

private

def remove_whitespace
  self.title = self.title.strip
  self.description = self.description.strip
end

end

