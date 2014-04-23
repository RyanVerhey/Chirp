require 'spec_helper'

describe RestaurantsController do
  describe "GET #index" do
    it "should not be nil"do
      FactoryGirl.build(:restaurant)
      get :index
      assigns(:restaurants).should_not be nil
    end

    it "renders the :index view" do
      get :index
      response.should render_template :index
    end
  end

  describe "GET #Show" do
    it "assigns the requested restaurant to @restaurant" do
      restaurant = FactoryGirl.create(:restaurant)
      get :show, id: restaurant
      assigns(:restaurant).should eq(restaurant)
    end

    it "renders the #Show view" do
      get :show, id: FactoryGirl.create(:restaurant)
      response.should render_template :show
    end  
  end

  describe "GET #New" do
    it "should create a new instance of a restaurant" do
      rest = FactoryGirl.build(:restaurant)
      get :new    
      assigns(:restaurant).should be_an_instance_of Restaurant
    end
  end
end
