# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.destroy_all
Instructor.destroy_all
User.destroy_all
Lesson.destroy_all


ashburn = Location.create(city: "Ashburn", state: "VA", phone_number: "703-444-1234")
alexandria = Location.create(city: "Alexandria", state: "VA", phone_number: "703-444-5678")

tiger = Instructor.create(first_name: "Tiger", last_name: "Woods", email: "tiger@golflive.com", password: "tiger123", location_id: ashburn.id )
michelle = Instructor.create(first_name: "Michelle", last_name: "Wie", email: "michelle@golflive.com", password: "michelle123", location_id: ashburn.id)
emily = Instructor.create(first_name: "Emily", last_name: "Smith", email: "emily@golflive.com", password: "emily123", location_id: ashburn.id)
dustin = Instructor.create(first_name: "Dustin", last_name: "Johnson", email: "dustin@golflive.com", password: "dustin123", location_id: alexandria.id)
amy = Instructor.create(first_name: "Amy", last_name: "Olson", email: "amy@golflive.com", password: "amy123", location_id: alexandria.id)
tim = Instructor.create(first_name: "Tim", last_name: "Brogan", email: "tim@golflive.com", password: "tim123", location_id: alexandria.id)



judy = User.create(first_name: "Judy", last_name: "Quattrone", email: "jquattrone@gmail.com", phone: "8938372721", password: "judy123")
jon = User.create(first_name: "Jon", last_name: "Wilson", email: "jwilson@gmail.com", phone: "8132822998", password: "jon123")


lesson1 = Lesson.create(date: "Jan09", time: "10am", instructor_id: tiger.id, user_id: judy.id, location_id: ashburn.id, skill_level: "Beginner", hand_position: "right")
lesson2 = Lesson.create(date: "Jan10", time: "2am", instructor_id: amy.id, user_id: jon.id, location_id: alexandria.id, skill_level: "Intermediate", hand_position: "left")
lesson3 = Lesson.create(date: "jan12", time: "9am", instructor_id: tiger.id, user_id: jon.id, location_id: ashburn.id, skill_level: "Intermediate", hand_position: "left")