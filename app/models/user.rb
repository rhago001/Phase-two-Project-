class User < ApplicationRecord
   has_many :lessons
   has_many :instructors, through: :lessons
   has_many :driving_ranges

   validates :first_name, presence: true 
   validates :last_name, presence: true 
   validates :email, presence: true, uniqueness: true 
   validates :phone_number, presence: true, format: { with: /\d{3}-\d{3}-\d{4}/, message: "must be in xxx-xxx-xxxx format" }
   validates :password, presence: true, length: { in: 6..20 }


   has_secure_password 

   def full_name
      "#{first_name} #{last_name}"
   end

   
end
