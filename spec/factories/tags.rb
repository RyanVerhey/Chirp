require 'faker'

FactoryGirl.define do
  factory :tag do |f|
    f.name { Faker::Lorem.word }
  end
end
