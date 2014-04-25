require 'spec_helper'

describe Tag do

  it 'has a valid tag' do
    FactoryGirl.create(:tag).should be_valid
  end

  it 'should have a name column' do
    should have_db_column(:name)
  end

  it 'should be invalid without a name' do
    FactoryGirl.build(:tag, name: nil).should be_invalid
  end

  it 'should have many categories' do
    should have_many(:categories)
  end

  it 'should have many restaurants' do
    should have_many(:restaurants)
  end

end
