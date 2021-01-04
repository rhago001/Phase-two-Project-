class UsersController < ApplicationController

   def show
      @user = User.find(params[:id])
   end

   def new
      @user = User.new
   end

   def create
      @user = User.new(params[:id])
      if @user.save
         redirect_to user_path(@user)
      else
         render :new
      end
   end

   def edit
   end

   def update
   end

   def destroy
   end

   private

   def user_params
   end

end
