class User < ActiveRecord::Base
  has_secure_password

  validates :username, presence: true
  validates :username, uniqueness: true
  validates :email, uniqueness: true
  validates :email, presence: true
  validates :email, format: { with: /\w+\@\w+\.\w{2,}/ }

  has_many :reviews, foreign_key: :reviewer_id
  has_many :restaurants, foreign_key: :owner_id

end
