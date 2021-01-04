class User < ApplicationRecord
   has_many :lessons
   has_many :instructors, through: :lessons
   has_many :driving_ranges

   validates :first_name, presence: true 
   validates :last_name, presence: true 
   validates :email, presence: true, uniqueness: true 
   validates :phone, length: { is: 10 }
   validates :password, presence: true, length: { in: 6..20 }


   has_secure_password 
   
end
