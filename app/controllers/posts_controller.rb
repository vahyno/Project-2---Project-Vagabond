class PostsController < ApplicationController

  # def index 
  #   @user = User.find(params[:id])
  #   @cities = @user.cities
  #   @posts = Post.all
  # end

  # def new
  #   @post = Post.new  --- on cities controller
  # end

  def create
    @post = City.find_by_id(params[:city_id])
      .posts
      .new(post_params)

    @post.user_id = current_user.id

    if @post.save
      redirect_to city_post_path(params[:city_id], @post.id)
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
