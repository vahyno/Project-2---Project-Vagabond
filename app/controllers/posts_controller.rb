class PostsController < ApplicationController

  def index #dont need this
    # @user = User.find(params[:id])
    # @cities = @user.cities
    @posts = Post.all
  end

  # def new
  #   @post = Post.new  --- on cities controller
  # end

  def create
    post = Post.new(post_params)
    if post.save
      redirect_to posts_path(post)
    end
  end

  def edit
#on user controller
  end

  def update
    #on post controller
  end

  def destroy
       #on post controller
  end

  private
  def post_params
    params.require(:post).permit(:review_title, :review)
  end

end
