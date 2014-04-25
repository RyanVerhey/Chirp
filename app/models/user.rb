class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true, format: { with: /\w+@\w+\.\w{2,}/ }
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  has_many :restaurants, foreign_key: :owner_id
  has_many :reviews, foreign_key: :reviewer_id
  has_secure_password

   def full_name
    [first_name, last_name].join(' ')
  end

  # Setter method to get the attributes
  def full_name=(name)
    split = name.split(' ', 2)
    self.first_name = split.first
    self.last_name = split.last
  end
end
