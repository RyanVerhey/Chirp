class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true, format: { with: /\w+@\w+\.\w{2,}/ }
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  has_many :restaurants
  has_many :reviews
  has_secure_password
end
