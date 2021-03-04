class Location < ApplicationRecord
  belongs_to :profile, optional: true

  # Search bar title
scope :get_by_suburb, ->(suburb) {
  where("(suburb) LIKE ?", "%#{suburb}%")
  }

end
