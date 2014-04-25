require 'faker'

FactoryGirl.define do
  factory :restaurant do |f|
    f.name { Faker::Company.name }
    # f.association :owner
    f.description { Faker::Lorem.sentence }
    f.street_address { Faker::Address.street_address }
    f.city { Faker::Address.city }
    f.state { Faker::Address.state }
    f.zip_code { Faker::Address.zip }
  end

  factory :invalid_restaurant, parent: :restaurant do |f|
    f.name nil
  end
end
