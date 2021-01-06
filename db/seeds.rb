# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ashburn = Location.create(city: "Ashburn", state: "VA", phone_number: "703-444-1234")
alexandria = Location.create(city: "Alexandria", state: "VA", phone_number: "703-444-5678")


tiger = Instructor.create(
   first_name: "Tiger", 
   last_name: "Woods", 
   email: "tiger@golflive.com", 
   password: "tiger123", 
   location_id: ashburn.id, 
   img_url: "https://pga-tour-res.cloudinary.com/image/upload/c_fill,d_headshots_default.png,dpr_2.0,f_auto,g_face:center,h_350,q_auto,w_280/headshots_08793.png", 
   bio: "Eldrick Tont 'Tiger' Woods was born December 30, 1975 and is an American professional golfer. He is tied for first in PGA Tour wins and ranks second in men's major championships and also holds numerous golf records.[5] Woods is widely regarded as one of the greatest golfers, and one of the most famous athletes of all time. He will be inducted into the World Golf Hall of Fame in 2021. Woods has held numerous golf records. He has been the number one player in the world for the most consecutive weeks and for the greatest total number of weeks of any golfer in history. He has been awarded PGA Player of the Year a record 11 times[13] and has won the Byron Nelson Award for lowest adjusted scoring average a record eight times."
)
michelle = Instructor.create(
   first_name: "Michelle", 
   last_name: "Wie", 
   email: "michelle@golflive.com", 
   password: "michelle123", 
   location_id: ashburn.id, 
   img_url: "https://www.lpga.com/-/media/images/lpga/players/w/wie/michelle/wie_michelle_2015_620x650.png?h=650&la=en&w=620&hash=C53628C3E82BC4B23F16611CF4AD4E1BF5FC36A5",
   bio: "Michelle Sung Wie West was born on October 11, 1989 and is an American professional golfer who plays on the LPGA Tour. At age 10, she became the youngest player to qualify for a USGA amateur championship. Wie also became the youngest winner of the U.S. Women's Amateur Public Links and the youngest to qualify for an LPGA Tour event. She turned professional shortly before her 16th birthday in 2005, accompanied by an enormous amount of publicity and endorsements. She won her first major at the 2014 U.S. Women's Open."
)
danielle = Instructor.create(
   first_name: "Danielle", 
   last_name: "Kang", 
   email: "danielle@golflive.com", 
   password: "danielle123", 
   location_id: ashburn.id, 
   img_url: "https://www.lpga.com/-/media/images/lpga/players/k/kang/danielle/kang_danielle_2017_bio_620x650.png?h=650&la=en&w=620&hash=BD71DE5E8B056F604F901093700635FD29F75BFA", 
   bio: "Danielle Grace Kang was born October 20, 1992 and is an American professional golfer currently playing on the LPGA Tour. As an amateur, she won the U.S. Women's Amateur twice, in 2010 and 2011. She won the 2017 KPMG Women's PGA Championship, an LPGA major."
)
dustin = Instructor.create(
   first_name: "Dustin", 
   last_name: "Johnson", 
   email: "dustin@golflive.com", 
   password: "dustin123", 
   location_id: alexandria.id,
   img_url: "https://pga-tour-res.cloudinary.com/image/upload/c_fill,d_headshots_default.png,dpr_2.0,f_auto,g_face:center,h_350,q_auto,w_280/headshots_30925.png", 
   bio: "Dustin Hunter Johnson was born June 22, 1984 and is an American professional golfer who plays on the PGA Tour. He has won two major championships, the 2016 U.S. Open at Oakmont Country Club with a 4-under-par score of 276 and the 2020 Masters Tournament with a record score of 268, 20-under-par. He had previously finished in a tie for second at both the 2011 Open Championship and the 2015 U.S. Open. He has six World Golf Championships victories, with only Tiger Woods having won more, and he is the first player to win each of the four World Golf Championship events."
)
amy = Instructor.create(
   first_name: "Amy", 
   last_name: "Olson", 
   email: "amy@golflive.com", 
   password: "amy123", 
   location_id: alexandria.id, 
   img_url: "https://www.lpga.com/-/player-data/gladiator-image/98084??mw=245&mh=330", 
   bio: "Amy Olson née Anderson was born July 10, 1992 and is an American professional golfer on the LPGA Tour. She turned professional in 2013 after her collegiate career at North Dakota State University where she won an NCAA record 20 collegiate events. Olson started her 2019 season sharing a five-way tie for tenth in the ISPS Handa Women's Australian Open, and a tie for fifth in the HSBC Women's World Championship."
)
justin = Instructor.create(
   first_name: "Justin", 
   last_name: "Thomas", 
   email: "justin@golflive.com", 
   password: "justin123", 
   location_id: alexandria.id, 
   img_url: "https://pga-tour-res.cloudinary.com/image/upload/c_fill,d_headshots_default.png,f_auto,g_face:center,h_350,q_auto,w_280/headshots_33448.png", 
   bio: "Justin Louis Thomas was born April 29, 1993 and is an American professional golfer who plays on the PGA Tour and is former World Number One. In 2017, Thomas experienced a breakout year, winning five PGA Tour events, including the PGA Championship, his maiden major championship, and also winning the FedEx Cup championship. In May 2018, Thomas became the 21st player to top the Official World Golf Ranking."
)

judy = User.create(first_name: "Judy", last_name: "Quattrone", email: "jquattrone@gmail.com", phone_number: "893-837-2721", password: "judy123")
jon = User.create(first_name: "Jon", last_name: "Wilson", email: "jwilson@gmail.com", phone_number: "813-282-2998", password: "jon123")


lesson1 = Lesson.create(date: "01/09/2021", time: "10:00am", instructor_id: tiger.id, user_id: judy.id, location_id: ashburn.id, skill_level: "Beginner", hand_position: "right", lesson_name: "Front 9: New Golfers")
lesson2 = Lesson.create(date: "01/10/2021", time: "2:00pm", instructor_id: amy.id, user_id: jon.id, location_id: alexandria.id, skill_level: "Intermediate", hand_position: "left", lesson_name: "Back 9: Beginner Golfers")
lesson3 = Lesson.create(date: "01/12/2021", time: "9:00am", instructor_id: tiger.id, user_id: jon.id, location_id: ashburn.id, skill_level: "Intermediate", hand_position: "left", lesson_name: "Advanced Golfers")

