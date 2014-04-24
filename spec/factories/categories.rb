# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :category do |f|
    f.restaurant_id 1
    f.tag_id 1
  end
end
