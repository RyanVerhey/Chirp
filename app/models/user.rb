class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true, format: { with: /\w+@\w+\.\w{2,}/ }
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  has_many :restaurants, foreign_key: :owner_id
  has_many :reviews, foreign_key: :reviewer_id
  has_secure_password
end
