class InstructorsController < ApplicationController

   def index
      @instructors = Instructor.all
   end

   def show
      @instructor = Instructor.find(params[:id])
   end



   private

   def instructor_params
      params.require(:instructor).permit(:first_name, :last_name, :email, :password)
   end
   
end
