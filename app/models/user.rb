class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :profile
  has_many :listings
  has_many :comments, dependent: :destroy    

  validates :comment_text, presence: true, length: { maximum: 1000 } 
end
