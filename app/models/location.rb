class Location < ApplicationRecord
  belongs_to :profile, optional: true
end
