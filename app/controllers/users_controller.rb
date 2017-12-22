class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params_user)
    if @user.save
      redirect_to home_path
    else
      render 'new'
    end
  end

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = current_user
    @user.update(params_avatar)
    @user.save
  end

  private
  def params_user
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :avatar)
  end

  def params_avatar
    params.require(:user).permit(:avatar)
  end
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end
