require 'spec_helper'

describe User do
  it "has a valid user" do
    FactoryGirl.create(:user).should be_valid
  end

  it "should allow only unique emails" do
    FactoryGirl.build(:user, email: "bob@bob.com").save
    expect { FactoryGirl.build(:user, email: "bob@bob.com").save }.to_not change(User, :count)
  end

  it "should allow only unique usernames" do
    FactoryGirl.build(:user, username: 'bob').save
    expect { FactoryGirl.build(:user, username: 'bob').save }.to_not change(User, :count)
  end

  it "should not save a invalid email" do
    FactoryGirl.build(:user, email: "adkjfh").should be_invalid
  end

  it "should be invalid without an email" do
    FactoryGirl.build(:user, email: nil).should be_invalid
  end

  it "should be invalid without a username" do
    FactoryGirl.build(:user, username: nil).should be_invalid
  end

  it "should be invalid without a password" do
    FactoryGirl.build(:user, password: nil).should be_invalid
  end

  it "should return a hash as the password digest" do
    expect(FactoryGirl.build(:user, password: "bob").password_digest.length).to be > "bob".length
  end

  it "should have a first_name column" do
    should have_db_column(:first_name)
  end

  it "should have a last_name column" do
    should have_db_column(:last_name)
  end

  it "should have a username column" do
    should have_db_column(:username)
  end

  it "should have a email column" do
    should have_db_column(:email)
  end

  it "should have a password_digest column" do
    should have_db_column(:password_digest)
  end

  it 'should have many reviews' do
    should have_many(:reviews)
  end

  it 'should have many restaurants' do
    should have_many(:restaurants)
  end

end
