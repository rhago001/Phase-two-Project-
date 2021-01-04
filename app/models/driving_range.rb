class DrivingRange < ApplicationRecord
   belongs_to :location
   belongs_to :user 

   validates :date, presence: true 
   validates :start_time, presence: true 
   validates :end_time, presence: true 
   validates :spot, presence: true 
   validates :location_id, presence: true 
   validates :user_id, presence: true 

end
