# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photo do
    food_image Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/fixtures/foodimages/foodimage.png')))
  end
end
