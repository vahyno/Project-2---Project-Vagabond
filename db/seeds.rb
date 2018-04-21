# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "delete all records"
Post.delete_all
User.delete_all
City.delete_all



p "Deleted all records"

user1 = User.create({first_name: "Gad", last_name:"Faisal", email:"fa@gad.com", password:"123", current_city:"San Francisco"})
city1 = City.create({city_name:"Paris", photo:"https://www.tabularaisa.com/wp-content/uploads/2015/12/eiffel.jpg"})
city3 = City.create({city_name:"NYC", photo:"http://bdfjade.com/data/out/66/5722795-nyc-wallpaper.jpg"})

post1 = user1.cities << city1
post2 = user1.cities << city3

# post1["review_title"] = "Fancy-Pants Paris"

# post1 = [{review_title: "Fancy-Pants Paris", review: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."}]

# post2 = [{review_title: "I <3 NYC", review: "ostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."}]



# post = Post.create(
#   {user_id: review_title:"Paris" review:"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."})
user2 = User.create({first_name: "Mad", last_name:"Man", email:"mad@gad.com", password:"123", current_city:"Freamont"})
city2 = City.create({city_name:"London", photo:"http://www.ionekatours.com/files/images/cache/1327603710_800_600_1327603710.jpg"})
#
post3 = user2.cities << city2
# post3 = [{review_title: "London is awesome", review: "em ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exum."}]



p "we seeded"
