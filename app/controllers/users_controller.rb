class UsersController < ApplicationController

  before_action :get_user, only: [:show, :edit, :update, :destroy]
  before_action :require_login, only: [:show]
  before_action :require_account_owner, except: [:new, :create, :edit, :update]

  def index
    @users = User.all
  end

  def new
    @user = User.new

  end

  def create
    # don't let current_user create new account
    if current_user
      redirect_to user_path(current_user)
    else
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        flash[:notice] = "Successfully signed up."
        redirect_to user_path(@user)
      else
        flash[:error] = @user.errors.full_messages.join(", ")
        redirect_to @user
      end
    end
  end

  def show
      @user = User.find_by_id(params[:id])
      @post = Post.find_by_id(params[:user_id])
      @posts = @user.posts
  end

  def edit
    user_id = params[:id]
    @edited_user = User.find_by_id(user_id)
  end

  def update
    user_id = params[:id]
    edited_user = User.find_by_id(user_id)
    edited_user.update_attributes(edit_params)

    redirect_to user_path
  end

  def destroy

  end

  private
	def user_params
		params.require(:user).permit(:first_name, :last_name, :current_city, :email, :password)
	end

  def edit_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :current_city) #user_photo
  end

   def get_user
    @user = User.find(params[:id])
  end

  def require_account_owner
    if @current_user != @user
      flash[:error] = 'You do not have permission to view this account.'
      redirect_to root_path
    end
  end

end
