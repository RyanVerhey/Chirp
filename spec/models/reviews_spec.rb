require 'spec_helper'

describe Review  do
  let(:review){ FactoryGirl.build(:review) }
  it "has a valid factory" do
    review.should be_valid
  end

  # CODE REVIEW: if the column in the database is of a number type, I'd write
  # a test that checks the value
  it "returns stars as a number" do
    review.stars.should be_an_instance_of Fixnum
  end


  it "returns content as a string" do
    review.content.should be_an_instance_of String
  end

end
