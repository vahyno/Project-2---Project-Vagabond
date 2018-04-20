class User < ApplicationRecord
   has_secure_password
   validates :email, presence: true, uniqueness: { message: "Please enter a unique email" }, on: :create


  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user ? @user.authenticate(params[:password]) : false
  end
end
