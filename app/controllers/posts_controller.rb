class PostsController < ApplicationController
  def new
    @psot = Post.new
  end
end
