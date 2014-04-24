require 'spec_helper'

describe Restaurant do
  # CODE REVIEW: check out shoulda-matchers
  it "has a valid factory" do
    FactoryGirl.create(:restaurant).should be_valid
  end
  it "is invalid without a name" do
    FactoryGirl.build(:restaurant, name: nil).should_not be_valid
  end
  it "returns name as a string" do
    restaurant = FactoryGirl.build(:restaurant, street_address: "1234 butts lane")
    restaurant.street_address.should eq "1234 butts lane"
  end
  it "return zipcode as an integer" do
    restaurant = FactoryGirl.build(:restaurant, zip_code: 60610)
    restaurant.zip_code.should eq 60610
  end

  it { should have_many(:photos) }

  describe "photos" do

      it "should have multiple photos" do

        restaurant = FactoryGirl.create(:restaurant)
        restaurant.photos.create({food_image:File.open(File.join(Rails.root, '/spec/fixtures/foodimages/foodimage.png'))})
        restaurant.photos.create({food_image:File.open(File.join(Rails.root, '/spec/fixtures/foodimages/foodimage.png'))})
        restaurant.photos.create({food_image:File.open(File.join(Rails.root, '/spec/fixtures/foodimages/foodimage.png'))})

        restaurant.photos.length.should eq(3)
      end
  end
end
