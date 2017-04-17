class UsersController < ApplicationController
    before_action :authenticate_user, only: [:update, :destroy,]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/events'
    else
      redirect_to '/signup'
    end
  end

  def update
  end

  def destroy
  end

  def show
  end

  def signup
    @user = User.new
  end

private

  def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def authenticate_user
      if session[:user_id] == @user.id
          true
      else
          redirect_to new_login_path
      end
  end
end
