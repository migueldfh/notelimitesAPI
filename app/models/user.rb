class User < ApplicationRecord
  has_secure_password
  has_one :attending_list
  has_many :image
end
