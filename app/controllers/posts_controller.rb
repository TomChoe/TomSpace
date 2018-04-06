class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :createComment, :destroyComment]
  skip_before_action :verify_authenticity_token

  def index
    @posts = Post.all
  end

  def show
    @comments = @post.comments
    @postUser = @post.user
    Comment.destroy(@comment)
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to('/posts')
    else
      redirect_to new_post_path
    end
  end

  def destroy
    Post.destroy(params[:id])
    redirect_to ('/posts')
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to ("/posts/#{@post.id}")
    else
      redirect_to ("/posts/#{@post.id}/edit")
    end
  end

  def createComment
    @comment = Comment.create(comment_params)
      redirect_to ("/posts/#{@post.id}")
  end
  
  private

  def set_post
    @post = Post.find_by(id: params[:id])
  end

  def comment_params
    params.require(:comment).permit(:user_id, :post_id, :body)
  end

  def post_params
    params.require(:post).permit(:user_id, :title, :body)
  end
end