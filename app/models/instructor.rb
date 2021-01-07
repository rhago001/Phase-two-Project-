class Instructor < ApplicationRecord
   has_many :lessons
   has_many :students, through: :lessons
   belongs_to :location

   validates :first_name, presence: true 
   validates :last_name, presence: true 
   validates :email, presence: true, uniqueness: true 
   validates :password, presence: true, length: { in: 6..20 }

   has_secure_password

   def full_name
      "#{first_name} #{last_name}"
   end

   def instructor_location
      city = self.lessons.select { |lesson| lesson.city }
   end

   
end
