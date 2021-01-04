class Instructor < ApplicationRecord
   has_many :lessons
   has_many :students, through: :lessons
   belongs_to :location

   validates :first_name, presence: true 
   validates :last_name, presence: true 
   validates :email, presence: true, uniqueness: true 
   validates :password, presence: true, length: { in: 6..20 }

   has_secure_password
end
