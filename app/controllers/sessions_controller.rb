class SessionsController < ApplicationController

  def new 
    @user = User.new
  end 

  def create
    @user = User.find_by(email: params[:user][:email])
     if @user && @user.authenticate(password: params[:user][:password])
      session[:id] = @user.id
      redirect_to user_path(@user), notice: "Logged in!"
     else
      flash[:errors] ="Email or Password is incorrect"
      redirect_to login_path
     end 
  end 

  def destroy
    session.clear
    redirect_to login_path, notice: "Logged out!"

  end 




end 