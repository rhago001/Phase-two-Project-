class DrivingRangesController < ApplicationController

   def index
      @driving_ranges = Driving_Range.all
   end

   def show
      @driving_range = Driving_Range.find(params[:id])
   end

   def new
      @driving_range = Driving_Range.new
   end

   def create
      @driving_range = Driving_Range.new(params[:id])
      if @driving_range.save
         redirect_to driving_range_path(@driving_range)
      else
         render :new
      end
   end

   def edit
      @driving_range = Driving_Range.find(params[:id])
   end

   def update
      @driving_range = Driving_Range.find(params[:id])
      if @driving_range.update(driving_range_params)
         redirect_to driving_range_path(@driving_range)
      else
         render :edit 
      end
   end

   def destroy
      Driving_Range.find(params[:id]).destroy
      redirect_to driving_ranges_path
   end

   private

   def driving_range_params
      params.require(:lesson).permit(:date, :start_time, :end_time, :spot, :location_id, :user_id)
   end
   
end
