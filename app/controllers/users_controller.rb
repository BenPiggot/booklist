class UsersController < ApplicationController

  def new 
  end

  def create 
    @user = User.new(user_params)
    binding.pry
    if @user.save
      session[:used_id] = @user.id
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :username, :password, :password_confirmation)
  end

end