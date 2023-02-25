# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
Review.destroy_all
WorkingHour.destroy_all
Suggestion.destroy_all
Restaurant.destroy_all
Tag.destroy_all
User.destroy_all
puts "destroyed review, favourite, workinghour, suggestion,restaurant,tag & user"
puts 'populating database...'
puts 'creating 3 users as owner'
u1 = User.new(email: "jean@lewagon.com", password: "123456", username: "@jean", owner: true)
u1.save!
u2 = User.new(email: "Tom@lewagon.com", password: "123456", username: "@tom", owner: true)
u2.save!
u3 = User.new(email: "fifi@lewagon.com", password: "123456", username: "@fifi", owner: true)
u3.save!
puts " Finished creating 3 users as owner "

puts "creating restaurants"
file = URI.open("https://images.pexels.com/photos/5305432/pexels-photo-5305432.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
r1 = Restaurant.new(name: "Bol 5", address: "JKalachand, A7, L'Agrément, Saint Pierre, Moka, Mauritius", contact_number: "59702430", user_id: u1.id)
r1.photos.attach(io: file, filename: "r1.jpeg", content_type: "image/jpeg")
r1.save!
puts " Finished creating first restaurant"
w1 = WorkingHour.new(day: "Tuesday to Saturday", opening_hours: "12:00", closing_hours: "23:30", restaurant_id: r1.id)
w1.save!
puts " Finished creating first restaurant working hours w1"
w2 = WorkingHour.new(day: "Sunday", opening_hours: "16:00", closing_hours: "23:30", restaurant_id: r1.id)
w2.save!
puts " Finished creating first restaurant working hours w2"

file = URI.open("https://images.pexels.com/photos/2664216/pexels-photo-2664216.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
r2 = Restaurant.new(name: "La Bonne Fourchette", address: "Circonstance, Saint Pierre, Moka, Outer islands of Mauritius, 81407, Mauritius", contact_number: "57752952", user_id: u2.id)
r2.photos.attach(io: file, filename: "r2.jpeg", content_type: "image/jpeg")
r2.save!
puts " Finished creating 2nd restaurant"
w3 = WorkingHour.new(day: "Tuesday to Saturday", opening_hours: "11:00", closing_hours: "20:00", restaurant_id: r2.id)
w3.save!
puts " Finished creating 2nd restaurant working hours w3"
w4 = WorkingHour.new(day: "Sunday", opening_hours: "12:00", closing_hours: "20:00", restaurant_id: r2.id)
w4.save!
puts " Finished creating 2nd restaurant working hours w4"

file = URI.open("https://images.pexels.com/photos/186861/pexels-photo-186861.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
r3 = Restaurant.new(name: "Golden Panda", address: "Helvétia, Saint Pierre, Moka, Outer islands of Mauritius, 81407, Mauritius", contact_number: "59891273", user_id: u3.id)
r3.photos.attach(io: file, filename: "r3.jpeg", content_type: "image/jpeg")
r3.save!
puts " Finished creating 3rd restaurant"
w5 = WorkingHour.new(day: "`Monday to Sunday", opening_hours: "9:00", closing_hours: "5:30", restaurant_id: r3.id)
w5.save!
puts " Finished creating 3rd restaurant working hours w5"

file = URI.open("https://images.pexels.com/photos/7364040/pexels-photo-7364040.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
r4 = Restaurant.new(name: "Mine Mangouste", address: "L'Agrément, Saint Pierre, Moka, Mauritius", contact_number: "4334325", user_id: u1.id)
r4.photos.attach(io: file, filename: "r4.jpeg", content_type: "image/jpeg")
r4.save!
puts " Finished creating 4th restaurant"
w6 = WorkingHour.new(day: "Monday to Sunday", opening_hours: "12:00", closing_hours: "23:00", restaurant_id: r4.id)
w6.save!
puts " Finished creating 4th restaurant working hours w6"
puts " Finished creating restaurants"

# seeding more restaurants for demo
file = URI.open("https://images.pexels.com/photos/1579739/pexels-photo-1579739.jpeg?auto=compress&cs=tinysrgb&w=1200")
r5 = Restaurant.new(name: "saffron grill", address: "Kendra Shopping Mall, A7, L'Agrément, Saint Pierre, Moka, Outer islands of Mauritius, 81407, Mauritius", contact_number: "4334325", user_id: u1.id)
r5.photos.attach(io: file, filename: "r5.jpeg", content_type: "image/jpeg")
r5.save!
puts " Finished creating 4th restaurant"
w7 = WorkingHour.new(day: "Monday to Sunday", opening_hours: "09:00", closing_hours: "22:00", restaurant_id: r5.id)
w7.save!
puts " Finished creating 4th restaurant working hours w6"
puts " Finished creating restaurants"

# seeding more restaurants for demo
file = URI.open("https://images.pexels.com/photos/7353393/pexels-photo-7353393.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
r6 = Restaurant.new(name: "star deg", address: "B49, Circonstance, Saint Pierre, Moka, Outer islands of Mauritius, 81402, Mauritius", contact_number: "4334325", user_id: u1.id)
r6.photos.attach(io: file, filename: "r6.jpeg", content_type: "image/jpeg")
r6.save!
puts " Finished creating 4th restaurant"
w8 = WorkingHour.new(day: "Monday to Sunday", opening_hours: "12:00", closing_hours: "23:00", restaurant_id: r6.id)
w8.save!
puts " Finished creating 4th restaurant working hours w6"
puts " Finished creating restaurants"

# seeding more restaurants for demo
file = URI.open("https://images.pexels.com/photos/104884/pexels-photo-104884.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
r7 = Restaurant.new(name: "B&G", address: "L'Agrément, Saint Pierre, Moka, Outer islands of Mauritius, 81407, Mauritius", contact_number: "4334325", user_id: u1.id)
r7.photos.attach(io: file, filename: "r7.jpeg", content_type: "image/jpeg")
r7.save!
puts " Finished creating 4th restaurant"
w9 = WorkingHour.new(day: "Monday to Sunday", opening_hours: "12:00", closing_hours: "23:00", restaurant_id: r7.id)
w9.save!
puts " Finished creating 4th restaurant working hours w6"
puts " Finished creating restaurants"

file = URI.open("https://images.pexels.com/photos/1579739/pexels-photo-1579739.jpeg?auto=compress&cs=tinysrgb&w=1200")
r8 = Restaurant.new(name: "GLORIA", address: "Pharmachic, A7, L'Agrément, Saint Pierre, Moka, Outer islands of Mauritius, 81407, Mauritius", contact_number: "4334325", user_id: u1.id)
r8.photos.attach(io: file, filename: "r8.jpeg", content_type: "image/jpeg")
r8.save!
puts " Finished creating 4th restaurant"
w10 = WorkingHour.new(day: "Monday to Sunday", opening_hours: "12:00", closing_hours: "23:00", restaurant_id: r8.id)
w10.save!
puts " Finished creating 4th restaurant working hours w6"
puts " Finished creating restaurants"

puts "creating tags"
t1 = Tag.new(name_tag: "Briyani")
file = URI.open("https://images.pexels.com/photos/5410401/pexels-photo-5410401.jpeg?auto=compress&cs=tinysrgb&w=1200")
t1.photo.attach(io: file, filename: "t1.jpeg", content_type: "image/jpeg")
t1.save!
t2 = Tag.new(name_tag: "Kebab")
file = URI.open("https://images.pexels.com/photos/13201082/pexels-photo-13201082.jpeg")
t2.photo.attach(io: file, filename: "t2.jpeg", content_type: "image/jpeg")
t2.save!
t3 = Tag.new(name_tag: "fried-noodles")
file = URI.open("https://images.pexels.com/photos/5848498/pexels-photo-5848498.jpeg?auto=compress&cs=tinysrgb&w=800")
t3.photo.attach(io: file, filename: "t3.jpeg", content_type: "image/jpeg")
t3.save!
t4 = Tag.new(name_tag: "ice-cream")
file = URI.open("https://www.biggerbolderbaking.com/wp-content/uploads/2020/01/2-Ingredient-Ice-cream-Thumbnail-scaled.jpg")
t4.photo.attach(io: file, filename: "t4.jpeg", content_type: "image/jpeg")
t4.save!
t5 = Tag.new(name_tag: "dholl puri")
file = URI.open("https://lacazemama.com/au/wp-content/uploads/2018/02/Dal-Puri.png")
t5.photo.attach(io: file, filename: "t5.jpeg", content_type: "image/jpeg")
t5.save!
t6 = Tag.new(name_tag: "roti")
file = URI.open("https://vacancesmaurice.com/slir/w854/content/images/guide/i-422/roti.jpg")
t6.photo.attach(io: file, filename: "t6.jpeg", content_type: "image/jpeg")
t6.save!
t7 = Tag.new(name_tag: "Burger")
file = URI.open("https://images.pexels.com/photos/8769141/pexels-photo-8769141.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
t7.photo.attach(io: file, filename: "t7.jpeg", content_type: "image/jpeg")
t7.save!
t8 = Tag.new(name_tag: "BBQ")
file = URI.open("https://nationaltoday.com/wp-content/uploads/2021/05/National-BBQ-Day-1-640x514.jpg")
t8.photo.attach(io: file, filename: "t8.jpeg", content_type: "image/jpeg")
t8.save!
puts " Finished creating 8 tags"

puts 'creating 3 users as not -owner'
u4 = User.new(email: "alex@lewagon.com", password: "123456", username: "@alex", owner: false)
u4.save!
u5 = User.new(email: "Jessy@lewagon.com", password: "123456", username: "@Jessy", owner: false)
u5.save!
u6 = User.new(email: "claire@lewagon.com", password: "123456", username: "@claire", owner: false)
u6.save!
puts " Finished creating 3 users as not owner "

puts "creating suggestions"
s1 = Suggestion.new(tag_id: t1.id, restaurant_id: r2.id)
s1.save!
s2 = Suggestion.new(tag_id: t1.id, restaurant_id: r3.id)
s2.save!
s3 = Suggestion.new(tag_id: t2.id, restaurant_id: r1.id)
s3.save!
s4 = Suggestion.new(tag_id: t2.id, restaurant_id: r2.id)
s4.save!
s5 = Suggestion.new(tag_id: t4.id, restaurant_id: r4.id)
s5.save!
puts " finished creating suggestions"

puts "creating reviews by users not owner"
re1 = Review.new(comment: "Good food, will come again!", rating: 3, restaurant_id: r1.id, user_id: u4.id)
re1.save!
re2 = Review.new(comment: "Delicieux!", rating: 4, restaurant_id: r2.id, user_id: u5.id)
re2.save!
re3 = Review.new(comment: "Zafer la Tamam!", rating: 5, restaurant_id: r4.id, user_id: u5.id)
re3.save!

puts "Finished populating database!"
