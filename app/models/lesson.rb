class Lesson < ApplicationRecord
   belongs_to :user
   belongs_to :instructor
   belongs_to :location

   validates :date, presence: true 
   validates_format_of :date, presence: true, :with => /\d{2}\/\d{2}\/\d{4}/, :message => "must be in the following format: mm/dd/yyyy"
   # validates :date, numericality: { greater_than_or_equal_to: Date.today.year }
   # validates :time, presence: true 
   # validates :hand_position, :inclusion => { :in => %w(Fiction Non-Fiction) }

   

end

