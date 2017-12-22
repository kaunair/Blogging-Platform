class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @user = current_user
    @post.user_id = @user.id
    if @post.save
      redirect_to home_url
    else
      render 'new'
    end
  end

  private
  def post_params
    params.require(:post).permit(:title,:content,:user_id)
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
