# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
Review.destroy_all
Favourite.destroy_all
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
file = URI.open("https://images.pexels.com/photos/262978/pexels-photo-262978.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
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

file = URI.open("https://images.pexels.com/photos/67468/pexels-photo-67468.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
r2 = Restaurant.new(name: "La Terrasse", address: "Loterie, Lislet Geoffrey Street, Cité Joachim, Floreal, Curepipe, Plaines Wilhems, Mauritius", contact_number: "57752952", user_id: u2.id)
r2.photos.attach(io: file, filename: "r2.jpeg", content_type: "image/jpeg")
r2.save!
puts " Finished creating 2nd restaurant"
w3 = WorkingHour.new(day: "Tuesday to Saturday", opening_hours: "11:00", closing_hours: "20:00", restaurant_id: r2.id)
w3.save!
puts " Finished creating 2nd restaurant working hours w3"
w4 = WorkingHour.new(day: "Sunday", opening_hours: "12:00", closing_hours: "20:00", restaurant_id: r2.id)
w4.save!
puts " Finished creating 2nd restaurant working hours w4"

file = URI.open("https://images.pexels.com/photos/958545/pexels-photo-958545.jpeg?auto=compress&cs=tinysrgb&w=1200")
r3 = Restaurant.new(name: "Kot Papi", address: "Gustave Bestel St, Curepipe", contact_number: "59891273", user_id: u3.id)
r3.photos.attach(io: file, filename: "r3.jpeg", content_type: "image/jpeg")
r3.save!
puts " Finished creating 3rd restaurant"
w5 = WorkingHour.new(day: "`Monday to Sunday", opening_hours: "9:00", closing_hours: "5:30", restaurant_id: r3.id)
w5.save!
puts " Finished creating 3rd restaurant working hours w5"

file = URI.open("https://images.pexels.com/photos/1579739/pexels-photo-1579739.jpeg?auto=compress&cs=tinysrgb&w=1200")
r4 = Restaurant.new(name: "Mine Mangouste", address: "L'Agrément, Saint Pierre, Moka, Mauritius", contact_number: "4334325", user_id: u1.id)
r4.photos.attach(io: file, filename: "r4.jpeg", content_type: "image/jpeg")
r4.save!
puts " Finished creating 4th restaurant"
w6 = WorkingHour.new(day: "Monday to Sunday", opening_hours: "12:00", closing_hours: "23:00", restaurant_id: r4.id)
w6.save!
puts " Finished creating 4th restaurant working hours w6"
puts " Finished creating restaurants"

puts "creating tags"
t1 = Tag.new(name_tag: "Briyani")
t1.save!
t2 = Tag.new(name_tag: "Kebab")
t2.save!
t3 = Tag.new(name_tag: "fried-noodles")
t3.save!
t4 = Tag.new(name_tag: "ice-cream")
t4.save!
t5 = Tag.new(name_tag: "mine frites")
t5.save!
t6 = Tag.new(name_tag: "dholl puri")
t6.save!
t7 = Tag.new(name_tag: "roti")
t7.save!
t8 = Tag.new(name_tag: "Burger")
t8.save!
t9 = Tag.new(name_tag: "BBQ")
t9.save!
puts " Finished creating 9 tags"

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
