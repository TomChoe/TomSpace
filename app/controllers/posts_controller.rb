class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
    @comments = Comment.where(:post_id => params[:id])
    @postUser = User.find_by(id: @post[:user_id])
  end

  def create

  end

  def destroy
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update

  end
end