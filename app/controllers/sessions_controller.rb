class SessionsController < ApplicationController
  def new
    
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to home_path
    else
      flash[:notice] = "Incorrect email or password"
			redirect_to login_path
    end
  end

  def show
  end

  def index
  end

  def destroy
    session[:user_id] = nil
    redirect_to home_path
  end
end
