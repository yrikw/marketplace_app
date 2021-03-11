class Location < ApplicationRecord
  belongs_to :profile, optional: true

  validates :postcode, presence: true, format: { with: /\A\d{4}\z/ }
  validates :postcode, presence: true
end
