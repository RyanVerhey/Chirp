require 'spec_helper'

describe Restaurant do

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

  it { should have_many :images }

  before(:each){
      @user = FactoryGirl.create(:user)
  }

  describe "images" do

      it "should have multiple images" do

          @user.images.create({document_file:File.open(File.join(Rails.root, '/spec/fixtures/foodimages/image.png'))})
          @user.images.create({document_file:File.open(File.join(Rails.root, '/spec/fixtures/foodimages/image.png'))})


          @user.images.length.should eq(3)
      end
  end
end
