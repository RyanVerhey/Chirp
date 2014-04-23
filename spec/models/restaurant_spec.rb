require 'spec_helper'

describe Restaurant do

  it "has a valid factory" do
    FactoryGirl.create(:restaurant).should be_valid 
  end
  it "is invalid without a name"
  it "returns name as a string"
  it "returns street address as a string"
  it "return zipcode as an integer"   
end