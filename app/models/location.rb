class Location < ApplicationRecord
  belongs_to :profile, optional: true

  # validation 
  validates :postcode, presence: true, format: { with: /\A\d{4}\z/ }
  validates :postcode, presence: true

  # Sanitisation
  before_save :remove_whitespace

  private

  def remove_whitespace
    self.streetname = self.streetname.strip
    self.suburb = self.suburb.strip
  end
end
