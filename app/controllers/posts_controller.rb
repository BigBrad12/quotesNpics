class PostsController < ApplicationController
  def index
    @current_user = current_user
    @posts = Post.all
  end
end