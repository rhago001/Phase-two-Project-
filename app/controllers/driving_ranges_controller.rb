class DrivingRangesController < ApplicationController

   def index
      @driving_ranges = Driving_Range.all
   end

   def show
      @driving_range = Driving_Range.find(params[:id])
   end

   def new
   end

   def create
   end

   def edit
   end

   def update
   end

   def destroy
   end

   private

   def driving_range_params
   end
   
end
