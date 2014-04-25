require 'spec_helper'

describe Restaurant do

  it "has a valid factory" do
    FactoryGirl.create(:restaurant).should be_valid
  end

  it "has a name column" do
    should have_db_column(:name)
  end
  it "has a description column" do
    should have_db_column(:description)
  end
  it "belongs to an owner" do
    should belong_to(:owner)
  end
  it "has a street address column" do
    should have_db_column(:street_address)
  end
  it "has a city column" do
    should have_db_column(:city)
  end
  it "has a state column" do
    should have_db_column(:state)
  end
  it "has a zipcode column" do
    should have_db_column(:zip_code)
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
  it 'should have many tags' do
    should have_many(:tags)
  end
  it 'should have many categories' do
    should have_many(:categories)
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
