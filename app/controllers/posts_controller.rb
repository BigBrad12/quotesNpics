class PostsController < ApplicationController

  def index
    @current_user = current_user
    @posts = Post.all
    @post = Post.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Post created"
      redirect_to root_path
    else 
      flash[:notice] = "Failed"
      redirect_to root_path
    end
  end

  private
  def post_params
    params.require(:post).permit(:pic, :quote).merge(user_id: current_user.id)
  end
end

