class User < ActiveRecord::Base
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :email, uniqueness: true
  validates :email, presence: true
  validates :email, format: { with: /\w+\@\w+\.\w{2,}/ }
  has_secure_password
end
