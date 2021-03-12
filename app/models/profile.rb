class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :picture
  has_one :location
  accepts_nested_attributes_for :location

  # validation
  validates :firstname, presence: true

  # Sanitisation
  before_save :remove_whitespace

  private

  def remove_whitespace
    self.firstname = self.firstname.strip
    self.lastname = self.lastname.strip
    self.description = self.description.strip
  end

end
