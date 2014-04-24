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
      get :new    
      assigns(:restaurant).should be_an_instance_of Restaurant
    end
    it "should render the #new view" do
      get :new
      response.should render_template :new
    end
  end

  describe "POST create" do
    context "with valid attributes" do
      it "creates a new restaurant" do
        expect {
          post :create, restaurant: FactoryGirl.attributes_for(:restaurant)
        }.to change(Restaurant, :count).by(1)
      end

      it "redirects to the index page after success" do
        post :create, restaurant: FactoryGirl.attributes_for(:restaurant)
        response.should redirect_to root_path
      end
    end

    context "with invalid information" do
      it "does not save the new restaurant" do
        expect {
          post :create, restaurant: FactoryGirl.attributes_for(:invalid_restaurant)
        }.to_not change(Restaurant, :count)
      end

      it "re-renders the new method" do
        post :create, restaurant: FactoryGirl.attributes_for(:invalid_restaurant)
        response.should render_template :new
      end
    end
  end
end
