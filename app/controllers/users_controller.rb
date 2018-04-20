class UsersController < ApplicationController
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

end



  private
	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password)
	end

end
