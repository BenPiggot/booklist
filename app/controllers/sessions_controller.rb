class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      flash[:success] = "Login Succesful!"
      redirect_to root_path
    else
      flash[:success] = "Sorry, the email and/or password are invalid"
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:info] = "You have successfully logged out"
    redirect_to root_path
  end

  private

end