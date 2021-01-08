class SessionsController < ApplicationController

  def new 
    @user = User.new
    
  end 

  def create
    user = User.find_by(email: params[:user][:email].downcase)
    

     if user && user.authenticate(params[:user][:password])      
      session[:id] = user.id
      flash[:notice]="Logged in successfully"
      redirect_to user
     else
      flash[:errors] ='Email or Password is incorrect'
      redirect_to login_path
     end 
  end 

  def destroy
    session.clear
    flash[:notice]="Logged out successfully"

    redirect_to root_path


  end 




end 