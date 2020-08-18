class User < ApplicationRecord
  has_secure_password
  has_many :entries
  validates :username, presence: true
  validates :password, presence: true
  validates :username, uniqueness: { message: "Username already taken" }
end
