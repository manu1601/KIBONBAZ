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
r1 = Restaurant.new(name: "Bol 5", address: "JKalachand, A7, L'Agrément, Saint Pierre, Moka, Mauritius", contact_number: "59702430", user_id: u1.id)
venue1 = URI.open("https://images.pexels.com/photos/5305432/pexels-photo-5305432.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
venue2 = URI.open("https://images.pexels.com/photos/67468/pexels-photo-67468.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
briyani = URI.open("https://media.istockphoto.com/id/1303098890/photo/briyani-rice-with-chicken-and-some-veggie.jpg?s=1024x1024&w=is&k=20&c=CmcItA_EPvYcl_8pDSRvSkkJiing7wz8gW51IiO1rQQ=")
noodles = URI.open("https://media.istockphoto.com/id/1403179775/photo/chinese-style-fried-noodles.jpg?s=1024x1024&w=is&k=20&c=aO0GmYDtN3OC-1aLlkif-AHjFiIyX_8ZBARd1SCeHro=")
bbq = URI.open("https://images.pexels.com/photos/2233729/pexels-photo-2233729.jpeg")
ice_cream = URI.open("https://images.pexels.com/photos/3631/summer-dessert-sweet-ice-cream.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
dholl_puri = URI.open("https://i.ytimg.com/vi/Ml6m0rhsvxA/maxresdefault.jpg")
burger = URI.open("https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/102cf51c-9220-4278-8b63-2b9611ad275e/Derivates/3831dbe2-352e-4409-a2e2-fc87d11cab0a.jpg")
kebab = URI.open("https://i.ytimg.com/vi/Ml6m0rhsvxA/maxresdefault.jpg")
r1.photos.attach(io: venue1, filename: "1.jpeg", content_type: "image/jpeg")
r1.photos.attach(io: venue2, filename: "2.jpeg", content_type: "image/jpeg")
r1.photos.attach(io: briyani, filename: "3.jpeg", content_type: "image/jpeg")
r1.photos.attach(io: noodles, filename: "4.jpeg", content_type: "image/jpeg")
r1.photos.attach(io: bbq, filename: "5.jpeg", content_type: "image/jpeg")
r1.photos.attach(io: ice_cream, filename: "6.jpeg", content_type: "image/jpeg")
r1.photos.attach(io: dholl_puri, filename: "7.jpeg", content_type: "image/jpeg")
r1.photos.attach(io: burger, filename: "8.jpeg", content_type: "image/jpeg")
r1.save!
puts " Finished creating first restaurant"
w1 = WorkingHour.new(day: "Tuesday to Saturday", opening_hours: "12:00", closing_hours: "23:30", restaurant_id: r1.id)
w1.save!
puts " Finished creating first restaurant working hours w1"
w2 = WorkingHour.new(day: "Sunday", opening_hours: "16:00", closing_hours: "23:30", restaurant_id: r1.id)
w2.save!
puts " Finished creating first restaurant working hours w2"

venue1 = URI.open("https://images.pexels.com/photos/2664216/pexels-photo-2664216.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
venue2 = URI.open("https://images.pexels.com/photos/1581554/pexels-photo-1581554.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
dhol_puri = URI.open("https://restaurants.mu/blog-admin/wp-content/uploads/2018/05/1-3.jpg")
roti = URI.open("https://veganlovlie.com/wp-content/uploads/mauritian_roti_fillings_part3_curry-on-roti.jpg")
ice_cream = URI.open("https://img.taste.com.au/DcBJMzGZ/taste/2017/05/fruit-sorbet-126288-1.jpg")
briyani = URI.open("https://www.indianhealthyrecipes.com/wp-content/uploads/2019/04/veg-biryani-recipe.jpg")
bbq = URI.open("https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F44%2F2021%2F05%2F10%2Fgrilled-citrus-bbq-glazed-chicken-1.jpg&w=380&h=380&c=sc&poi=%5B1100%2C671%5D&q=60&rect=423%2C0%2C1882%2C1459")
r2 = Restaurant.new(name: "La Bonne Fourchette", address: "Circonstance, Saint Pierre, Moka, Outer islands of Mauritius, 81407, Mauritius", contact_number: "57752952", user_id: u2.id)
r2.photos.attach(io: venue1, filename: "1.jpeg", content_type: "image/jpeg")
r2.photos.attach(io: dhol_puri, filename: "2.jpeg", content_type: "image/jpeg")
r2.photos.attach(io: venue2, filename: "3.jpeg", content_type: "image/jpeg")
r2.photos.attach(io: roti, filename: "4.jpeg", content_type: "image/jpeg")
r2.photos.attach(io: ice_cream, filename: "5.jpeg", content_type: "image/jpeg")
r2.photos.attach(io: briyani, filename: "6.jpeg", content_type: "image/jpeg")
r2.photos.attach(io: bbq, filename: "7.jpeg", content_type: "image/jpeg")
r2.save!
puts " Finished creating 2nd restaurant"
w3 = WorkingHour.new(day: "Tuesday to Saturday", opening_hours: "11:00", closing_hours: "20:00", restaurant_id: r2.id)
w3.save!
puts " Finished creating 2nd restaurant working hours w3"
w4 = WorkingHour.new(day: "Sunday", opening_hours: "12:00", closing_hours: "20:00", restaurant_id: r2.id)
w4.save!
puts " Finished creating 2nd restaurant working hours w4"

venue1 = URI.open("https://images.pexels.com/photos/186861/pexels-photo-186861.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
venue2 = URI.open("https://images.pexels.com/photos/903376/pexels-photo-903376.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
burger = URI.open("https://images.pexels.com/photos/1639557/pexels-photo-1639557.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
kebab = URI.open("https://www.ebox.mu/assets/recipes/l/E85CUZeErCsDBlkPyJLeMeXRG8ldoAn6GG6rrGrD.jpg")
briyani = URI.open("https://static.wixstatic.com/media/f3a033_294b3eff800a4fbc949b3ba93de2391c~mv2.jpg/v1/fill/w_560,h_368,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/Briyani.jpg")
roti = URI.open("https://theculturetrip.com/wp-content/uploads/2017/04/fb_img_1491282702113.jpg")
dholl_puri = URI.open("https://mauritian-cuisine.com/wp-content/uploads/2022/08/119124097_1463708333814649_5846707474917198766_n.jpg")
r3 = Restaurant.new(name: "Golden Panda", address: "Helvétia, Saint Pierre, Moka, Outer islands of Mauritius, 81407, Mauritius", contact_number: "59891273", user_id: u3.id)
r3.photos.attach(io: venue1, filename: "1.jpeg", content_type: "image/jpeg")
r3.photos.attach(io: venue2, filename: "2.jpeg", content_type: "image/jpeg")
r3.photos.attach(io: burger, filename: "3.jpeg", content_type: "image/jpeg")
r3.photos.attach(io: kebab, filename: "4.jpeg", content_type: "image/jpeg")
r3.photos.attach(io: briyani, filename: "5.jpeg", content_type: "image/jpeg")
r3.photos.attach(io: roti, filename: "6.jpeg", content_type: "image/jpeg")
r3.photos.attach(io: dholl_puri, filename: "7.jpeg", content_type: "image/jpeg")
r3.save!
puts " Finished creating 3rd restaurant"
w5 = WorkingHour.new(day: "`Monday to Sunday", opening_hours: "9:00", closing_hours: "5:30", restaurant_id: r3.id)
w5.save!
puts " Finished creating 3rd restaurant working hours w5"

file = URI.open("https://images.pexels.com/photos/7364040/pexels-photo-7364040.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
dholl_puri = URI.open("https://images.pexels.com/photos/7364040/pexels-photo-7364040.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
fried_noodles = URI.open("https://www.honestfoodtalks.com/wp-content/uploads/2022/12/Chungs-Teriyaki-stir-fry-Hong-Kong-noodles-with-chopsticks-on-the-side.jpg")
roti = URI.open("https://www.indian-ocean.com/wp-content/uploads/2014/11/P1100093.jpg")
bbq = URI.open("https://cdn.shopify.com/s/files/1/0661/2838/0145/products/NewProductsBBlock_17_460x@2x.png?v=1670480067")
burger = URI.open("https://www.unileverfoodsolutions.com.au/dam/global-ufs/mcos/anz/calcmenu/recipe/killer-recipes-update/beef-burger-with-deep-fried-bacon-and-thousand-island-dressing_main-header.jpg")
ice_cream = URI.open("https://jessicainthekitchen.com/wp-content/uploads/2022/03/Avocado-Ice-Cream6525.jpg")
r4 = Restaurant.new(name: "Mine Mangouste", address: "L'Agrément, Saint Pierre, Moka, Mauritius", contact_number: "4334325", user_id: u1.id)
r4.photos.attach(io: file, filename: "r4.jpeg", content_type: "image/jpeg")
r4.photos.attach(io: dholl_puri, filename: "r4.jpeg", content_type: "image/jpeg")
r4.photos.attach(io: fried_noodles, filename: "r4.jpeg", content_type: "image/jpeg")
r4.photos.attach(io: roti, filename: "r4.jpeg", content_type: "image/jpeg")
r4.photos.attach(io: bbq, filename: "r4.jpeg", content_type: "image/jpeg")
r4.photos.attach(io: burger, filename: "r4.jpeg", content_type: "image/jpeg")
r4.photos.attach(io: ice_cream, filename: "r4.jpeg", content_type: "image/jpeg")
r4.save!
puts " Finished creating 4th restaurant"
w6 = WorkingHour.new(day: "Monday to Sunday", opening_hours: "12:00", closing_hours: "23:00", restaurant_id: r4.id)
w6.save!
puts " Finished creating 4th restaurant working hours w6"
puts " Finished creating restaurants"

# seeding more restaurants for demo
file = URI.open("https://images.pexels.com/photos/1579739/pexels-photo-1579739.jpeg?auto=compress&cs=tinysrgb&w=1200")
dholl_puri = URI.open("https://www.krazybutterfly.com/wp-content/uploads/2022/05/Dholl-Puri.jpg")
fried_noodles = URI.open("https://www.joyousapron.com/wp-content/uploads/2021/03/Tom-Yum-Fried-Noodles.jpg")
r5 = Restaurant.new(name: "Saffron Grill", address: "Kendra Shopping Mall, A7, L'Agrément, Saint Pierre, Moka, Outer islands of Mauritius, 81407, Mauritius", contact_number: "4334325", user_id: u1.id)
briyani = URI.open("https://sambalexpress.co.uk/barkingside/wp-content/uploads/sites/6/2020/07/Chicken_Biryani.jpg")
r5.photos.attach(io: file, filename: "2.jpeg", content_type: "image/jpeg")
r5.photos.attach(io: dholl_puri, filename: "2.jpeg", content_type: "image/jpeg")
r5.photos.attach(io: fried_noodles, filename: "2.jpeg", content_type: "image/jpeg")
r5.photos.attach(io: briyani, filename: "2.jpeg", content_type: "image/jpeg")
r5.save!
puts " Finished creating 4th restaurant"
w7 = WorkingHour.new(day: "Monday to Sunday", opening_hours: "09:00", closing_hours: "22:00", restaurant_id: r5.id)
w7.save!
puts " Finished creating 4th restaurant working hours w6"
puts " Finished creating restaurants"

# seeding more restaurants for demo
file = URI.open("https://images.pexels.com/photos/7353393/pexels-photo-7353393.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
r6 = Restaurant.new(name: "star deg", address: "B49, Circonstance, Saint Pierre, Moka, Outer islands of Mauritius, 81402, Mauritius", contact_number: "4334325", user_id: u1.id)
r6.photos.attach(io: file, filename: "1.jpeg", content_type: "image/jpeg")
r6.save!
puts " Finished creating 4th restaurant"
w8 = WorkingHour.new(day: "Monday to Sunday", opening_hours: "12:00", closing_hours: "23:00", restaurant_id: r6.id)
w8.save!
puts " Finished creating 4th restaurant working hours w6"
puts " Finished creating restaurants"

# seeding more restaurants for demo
file = URI.open("https://images.pexels.com/photos/104884/pexels-photo-104884.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
dholl_puri = URI.open("https://images.pexels.com/photos/104884/pexels-photo-104884.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
fried_noodles = URI.open("http://cdn.shopify.com/s/files/1/0595/3850/5936/articles/20221130023757-untitled-design-12-3.png?v=1669776008")
ice_cream = URI.open("https://www.washingtonpost.com/resizer/qYpYDV1BjKI3ZimLblCjjFXhc2k=/arc-anglerfish-washpost-prod-washpost/public/KUFWIPXROII6ZLAWR67XDFGNPA.jpg")
bbq = URI.open("https://thequirinokitchen.com/wp-content/uploads/2014/05/IMG_1424-e1400697798900.jpg")
r7 = Restaurant.new(name: "B&G", address: "L'Agrément, Saint Pierre, Moka, Outer islands of Mauritius, 81407, Mauritius", contact_number: "4334325", user_id: u1.id)
r7.photos.attach(io: file, filename: "1.jpeg", content_type: "image/jpeg")
r7.photos.attach(io: dholl_puri, filename: "2.jpeg", content_type: "image/jpeg")
r7.photos.attach(io: fried_noodles, filename: "3.jpeg", content_type: "image/jpeg")
r7.photos.attach(io: ice_cream, filename: "4.jpeg", content_type: "image/jpeg")
r7.photos.attach(io: bbq, filename: "5.jpeg", content_type: "image/jpeg")
r7.save!
puts " Finished creating 4th restaurant"
w9 = WorkingHour.new(day: "Monday to Sunday", opening_hours: "12:00", closing_hours: "23:00", restaurant_id: r7.id)
w9.save!
puts " Finished creating 4th restaurant working hours w6"
puts " Finished creating restaurants"

file = URI.open("https://images.pexels.com/photos/1579739/pexels-photo-1579739.jpeg?auto=compress&cs=tinysrgb&w=1200")
roti = URI.open("https://restaurants.mu/blog-admin/wp-content/uploads/2018/05/3-1.jpg")
dholl_puri = URI.open("https://www.linfo.re/IMG/jpg/276152171_761170001463985_1451450490062626206_n.jpg")
briyani = URI.open("https://www.asiaone.com/sites/default/files/original_images/Mar2020/20200311-briyani-pex.jpg")
fried_noodles = URI.open("https://woonheng.com/wp-content/uploads/2021/03/Cantonese-Soy-Sauce-Fried-Noodle.jpg")
bbq = URI.open("https://images.immediate.co.uk/production/volatile/sites/30/2020/08/how-to-barbecue-safely-main-image-700-350-6b4e52c.jpg?quality=90&fit=700,350")
r8 = Restaurant.new(name: "GLORIA", address: "Pharmachic, A7, L'Agrément, Saint Pierre, Moka, Outer islands of Mauritius, 81407, Mauritius", contact_number: "4334325", user_id: u1.id)
r8.photos.attach(io: file, filename: "1.jpeg", content_type: "image/jpeg")
r8.photos.attach(io: roti, filename: "2.jpeg", content_type: "image/jpeg")
r8.photos.attach(io: dholl_puri, filename: "3.jpeg", content_type: "image/jpeg")
r8.photos.attach(io: briyani, filename: "4.jpeg", content_type: "image/jpeg")
r8.photos.attach(io: fried_noodles, filename: "5.jpeg", content_type: "image/jpeg")
r8.photos.attach(io: bbq, filename: "5.jpeg", content_type: "image/jpeg")
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
t3 = Tag.new(name_tag: "Fried-noodles")
file = URI.open("https://images.pexels.com/photos/5848498/pexels-photo-5848498.jpeg?auto=compress&cs=tinysrgb&w=800")
t3.photo.attach(io: file, filename: "t3.jpeg", content_type: "image/jpeg")
t3.save!
t4 = Tag.new(name_tag: "Ice-cream")
file = URI.open("https://www.biggerbolderbaking.com/wp-content/uploads/2020/01/2-Ingredient-Ice-cream-Thumbnail-scaled.jpg")
t4.photo.attach(io: file, filename: "t4.jpeg", content_type: "image/jpeg")
t4.save!
t5 = Tag.new(name_tag: "Dholl Puri")
file = URI.open("https://lacazemama.com/au/wp-content/uploads/2018/02/Dal-Puri.png")
t5.photo.attach(io: file, filename: "t5.jpeg", content_type: "image/jpeg")
t5.save!
t6 = Tag.new(name_tag: "Roti")
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
file = URI.open("https://kitt.lewagon.com/placeholder/users/random")
u4.photo.attach(io: file, filename: "Alex_avatar.png", content_type: "image/png")
u4.save!
u5 = User.new(email: "Jessy@lewagon.com", password: "123456", username: "@Jessy", owner: false)
file = URI.open("https://kitt.lewagon.com/placeholder/users/random")
u5.photo.attach(io: file, filename: "Jessy_avatar.png", content_type: "image/png")
u5.save!
u6 = User.new(email: "claire@lewagon.com", password: "123456", username: "@claire", owner: false)
file = URI.open("https://kitt.lewagon.com/placeholder/users/random")
u6.photo.attach(io: file, filename: "Claire_avatar.png", content_type: "image/png")
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
# tag_id 8 bbq
s6 = Suggestion.new(tag_id: t8.id, restaurant_id: r1.id)
s6.save!
puts " finished creating suggestions"

puts "creating reviews by users not owner"
re1 = Review.new(comment: "Good food, will come again!", rating: 3, restaurant_id: r1.id, user_id: u4.id)
re1.save!
re2 = Review.new(comment: "Delicieux!", rating: 4, restaurant_id: r2.id, user_id: u5.id)
re2.save!
re3 = Review.new(comment: "Zafer la Tamam!", rating: 5, restaurant_id: r4.id, user_id: u5.id)
re3.save!

puts "Finished populating database!"
# def add_photos(links, r)
#   counter = 1

#   links.each_with_index do |link, index|
#     file = URI.open(link)
#     counter.photos.attach(io: file, filename: "restaurant#{index}", content_type: "image/jpeg")
#   end
#   counter++
# end
