class Lesson < ApplicationRecord
   belongs_to :user
   belongs_to :instructor
   belongs_to :location

   validates :date, presence: true 
   # validates :date, numericality: { greater_than_or_equal_to: Date.today.year }
   # validates :time, presence: true 
   # validates :hand_position, :inclusion => { :in => %w(Fiction Non-Fiction) }


end
