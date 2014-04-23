class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true, format: { with: ConstantData::VALID_EMAIL_REGEX }
  validates :username, presence: true, uniqueness: true 
  has_many :restaurants
  has_many :reviews
  has_secure_password
end
