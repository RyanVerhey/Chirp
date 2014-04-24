# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photo do
    photo Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/fixtures/foodimages/foodimage.jpg')))
  end
end
