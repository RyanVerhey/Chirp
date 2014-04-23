require 'faker'

FactoryGirl.define do
  factory :restaurant do |f|
    f.name { Faker::Company.name }
    f.description { Faker::Lorem.sentence }
    f.street_address { Faker::Address.street_address }
    f.city_state { Faker::Address.state }
    f.zip_code { Faker::Address.zip }
  end
end
