class User < ApplicationRecord
  has_many :pictures
  has_secure_password
  has_many :liked_pictures 
end
