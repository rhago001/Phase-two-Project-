class Location < ApplicationRecord
   has_many :driving_ranges
   has_many :instructors
   has_many :lessons

   

end
