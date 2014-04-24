# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([name: 'Chicago' }, name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'


25.times do |n|
  username = Faker::Name.first_name
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  password = "password"
  email = Faker::Internet.email
  User.create!(username: username,
              first_name: first_name,
              last_name: last_name,
              password: password,
              password_confirmation: password,
              email: email)
end

10.times do 
  name = Faker::Company.name 
  description = Faker::Lorem.sentence
  street_address = Faker::Address.street_address
  city_state = Faker::Address.state
  zip_code = Faker::Address.zip
  user = User.all.first
  Restaurant.create!(name: name,
                      owner: user,
                      description: description,
                      street_address: street_address,
                      city_state: city_state,
                      zip_code: zip_code)
end

10.times do
  Restaurant.all.each do |restaurant|
    restaurant.reviews.create!(reviewer_id: 1,
                                restaurant_id: restaurant.id,
                                content: Faker::Lorem.sentence, 
                                stars: rand(1..5))
  end
end 