class Location < ApplicationRecord
  belongs_to :profile, optional: true

  validates :postcode, presence: true, format: { with: /\A\d{4}\z/ }

# Search bar title
scope :get_by_suburb, ->(suburb) {
  where("(suburb) LIKE ?", "%#{suburb}%")
  }

end
