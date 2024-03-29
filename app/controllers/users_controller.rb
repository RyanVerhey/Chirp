class UsersController < ApplicationController
  def new
    if logged_in?
      redirect_to user_path(current_user)
    else
      @user = User.new
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:error] = "Something went wrong with creating your account. Please verify your information and try again."
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
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation, :error)
  end
end
