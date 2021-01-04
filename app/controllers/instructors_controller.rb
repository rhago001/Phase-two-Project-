class InstructorsController < ApplicationController

   def index
      @instructors = Instructor.all
   end

   def show
      @instructor = Instructor.find(params[:id])
   end



   def edit
   end

   def update
   end


   private

   def instructor_params
   end
   
end
