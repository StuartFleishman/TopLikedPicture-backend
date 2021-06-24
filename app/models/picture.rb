class Picture < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :liked_pictures 
end
