require 'faker'

FactoryGirl.define do
  factory :review do |f|
    f.reviewer_id 1
    f.restaurant_id 1
    f.content { Faker::Lorem.sentence }
    f.stars { rand(1..5) }
    f.votes -13
  end
end
