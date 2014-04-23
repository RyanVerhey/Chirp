class UsersController < ApplicationController
  def login
    @user = User.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(first_name: user_params[:first_name],
                     last_name: user_params[:last_name],
                     username: user_params[:username],
                     email: user_params[:email],
                     password: user_params[:password],
                     password_confirmation: user_params[:password_confirm])
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to new_user_path
    end
  end

  def show
    @user = User.where(id: params[:id]).first
  end

  def index
    if logged_in?
      @user = current_user
      render 'users/show'
    else
      redirect_to users_login_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirm)
  end
end
