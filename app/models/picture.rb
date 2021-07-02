class Picture < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :liked_pictures 
  validates :title, presence: true
  validates :image_url, presence: true
end
