require 'spec_helper'

describe Review  do

  let(:review){ FactoryGirl.build(:review) }
  it "has a valid factory" do
    review.should be_valid
  end

  it { should belong_to(:reviewer).class_name('User')}
  it { should validate_presence_of(:reviewer) }
  it { should belong_to(:restaurant) }
  it { should validate_presence_of(:restaurant) }

  it { should validate_numericality_of(:stars).is_less_than_or_equal_to(5) }
  it { should validate_numericality_of(:votes) }

  it "returns content as a string" do
    review.content.should be_an_instance_of String
  end

end
