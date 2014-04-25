require 'spec_helper'

describe Photo do

  let(:photo){ FactoryGirl.build(:photo) }

  it "has a valid factory" do
    photo.should be_valid
  end

  it { should belong_to(:restaurant) }

  it { should have_db_column(:caption) }

  it { should have_db_column(:food_image)}
end
