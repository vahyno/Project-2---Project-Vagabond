# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "Delete all records"
Post.delete_all
User.delete_all
City.delete_all
p "Deleted: Post.delete_all, User.delete_all, City.delete_all => all records"

user1 = User.create({first_name: "Gad", last_name:"Faisal", email:"foo@bar.com", password:"123", current_city:"San Francisco"})
user2 = User.create({first_name: "Method", last_name:"Man", email:"wu@tang.com", password:"123", current_city:"NYC"})

city1 = City.create({city_name:"Paris", photo:"https://www.tabularaisa.com/wp-content/uploads/2015/12/eiffel.jpg"})
city2 = City.create({city_name:"London", photo:"http://www.ionekatours.com/files/images/cache/1327603710_800_600_1327603710.jpg"})
city3 = City.create({city_name:"Gibraltar", photo:"https://cdn.britannica.com/700x450/61/191561-004-057263C3.jpg"})
city4 = City.create({city_name:"New York City", photo:"https://images.unsplash.com/photo-1504259804616-eda856c0149a?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=d865cad2743955d669ac850593138155&auto=format&fit=crop&w=2100&q=80"})

post1 = user1.cities << city1
post2 = user1.cities << city3
post3 = user2.cities << city3
post4 = user1.cities << city4
post5 = user2.cities << city2

p1 = Post.first
p1.update(review_title: "Fancy-Pants Paris", review: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

p2 = Post.second
p2.update(review_title: "I <3 Gibraltar", review: "ostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat.")

p3 = Post.third
p3.update(review_title: "Gibraltar is cool.", review: "em ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exum.")

p4 = Post.fourth
p4.update(review_title: "NYC is awesome", review: "dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. U.")

p5 = Post.last
p5.update(review_title: "Fun in London", review: "sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis.")

p "++++++++++++++++++++++++++++"
p "+++All users+++++"
p User.all
p "+++All cities+++++"
p City.all
"+++All posts+++++"
p Post.all
p "++++++++++++++++++++++++++++++"


p "Success"
