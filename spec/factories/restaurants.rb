require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.username { Faker::Name.first_name }
    f.first_name { Faker::Name.first_name }
    f.last_name { Faker::Name.last_name }
    f.password_digest '123456'
    f.email { Faker::Internet.email }
  end

  factory :restaurant do |f|
    f.name { Faker::Company.name }
    # f.owner 
    f.description { Faker::Lorem.sentence }
    f.street_address { Faker::Address.street_address }
    f.city_state { Faker::Address.state }
    f.zip_code { Faker::Address.zip }
  end

  factory :invalid_restaurant, parent: :restaurant do |f|
    f.name nil
  end
end
