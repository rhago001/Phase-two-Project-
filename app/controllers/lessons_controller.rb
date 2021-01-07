class LessonsController < ApplicationController


   def index
      @lessons = Lesson.all
   end

   def show
      @lesson = Lesson.find(params[:id])
   end

   def new
      @lesson = Lesson.new
   end

   def create
      @lesson = Lesson.new(lesson_params)
      if @lesson.save 
         redirect_to lesson_path(@lesson)
      else
         render :new 
      end
   end


   def edit
      @lesson = Lesson.find(params[:id])
   end

   def update
      @lesson = Lesson.find(params[:id])
      if @lesson.update(lesson_params)
         redirect_to lesson_path(@lesson)
      else
         render :edit
      end
   end

   def destroy
      @lesson = Lesson.find(params[:id])
      @lesson.destroy
      redirect_to user_path(@user)
   end

   private

   def lesson_params
      params.require(:lesson).permit(:date, :time, :instructor_id, :user_id, :location_id, :skill_level, :hand_position)
   end
   
end
