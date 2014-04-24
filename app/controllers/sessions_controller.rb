class SessionsController < ApplicationController
  def create
    @user = User.where(email: user_params[:email]).first
    if @user && @user.authenticate(user_params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      redirect_to controller: 'Users', action: 'login' # This should be changed to whatever the login route is
    end
  end

  def logout
    session.clear
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
