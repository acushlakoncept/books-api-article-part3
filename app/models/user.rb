# app/models/user.rb
class User < ApplicationRecord
  has_secure_password
  has_many :books

  validates :username, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :password, presence: true, length: { minimum: 6 }
end
