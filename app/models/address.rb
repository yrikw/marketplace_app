class Address < ApplicationRecord
  belongs_to :suburb
  belongs_to :profile
end
