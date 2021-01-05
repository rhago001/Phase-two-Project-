class UsersController < ApplicationController

   def home

   end 
   
   def show
      @user = User.find(params[:id])
   end

   def new
      @user = User.new
   end

   def create
      @user = User.new(user_params)
      if @user.save
         redirect_to user_path(@user)
      else
         flash[:errors]=@user.errors.full_messages
         redirect_to login_path
      end
   end

   def edit
      @user = User.find(params[:id])

   end

   def update
      @user = User.find(params[:id])
     if  @user.update(user_params)
       redirect_to user_path(@user)
     else
      render :edit
     end 
   end

   def destroy
      User.find(params[:id]).destroy
      redirect_to home_path
   end

   private

   def user_params
      params.require(:users).permit(:first_name, :last_name, :email, :phone, :password)
   end

end
