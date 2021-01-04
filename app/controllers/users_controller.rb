class UsersController < ApplicationController

   def show
      @user = User.find(params[:id])
   end

   def new
      @user = User.new
   end

   def create
      @user
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
