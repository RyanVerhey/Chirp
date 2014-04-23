require 'spec_helper'

describe Review  do
  let(:review){ FactoryGirl.build(:review) }
  it "has a valid factory" do
    review.should be_valid
  end

  it "returns stars as a number" do
    review.stars.should be_an_instance_of Fixnum
  end


  it "returns content as a string" do
    review.content.should be_an_instance_of String
  end

end
