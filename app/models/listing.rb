class Listing < ApplicationRecord
  belongs_to :category
  belongs_to :measurement
  belongs_to :user
  has_one_attached :picture

# ユーザー名による絞り込み
scope :get_by_title, ->(title) {
  where("upper(title) LIKE ?", "%#{title.upcase}%")
  }
  # 性別による絞り込み
  scope :get_by_category, ->(category) {
  where(category: category)}
end

