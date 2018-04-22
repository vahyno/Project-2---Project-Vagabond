class PostsController < ApplicationController

  def index
    # @user = User.find(params[:id])
    # @cities = @user.cities
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    if post.save
      redirect_to posts_path(post)
    end
  end

  def show
  end
  def edit

  end

  def update
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:review_title, :review)
  end

end
