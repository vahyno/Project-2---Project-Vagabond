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

  def show
    post_id = params[:id]
    @post = Post.find_by_id(post_id)
    @city = City.find_by_id(@post.city_id)
    @user = current_user
  end

  def edit
    @user = current_user
    @post = Post.find_by_id(params[:id])
  end

  def update
    edited_post = Post.find_by_id(params[:id])
    edited_post.update_attributes(post_params)

    # redirect_to user_post_path
    redirect_to user_path(current_user.id)
  end

  def destroy
    #on post controller
  end

  private
  def post_params
    params.require(:post).permit(:review_title, :review)
  end

end
