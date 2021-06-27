class User < ApplicationRecord
  has_many :pictures
  has_many :liked_pictures 
  

  has_secure_password

  validates :name, presence: true
  validates :email, uniqueness: true, presence: true

  #set up has many through w/ aliasing
end
