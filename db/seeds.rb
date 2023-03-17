# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
Review.destroy_all
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
venue1 = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t39.30808-6/277772928_2197167323786035_8487468349582835689_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=730e14&_nc_ohc=lwbTrDmO8RkAX-i7v5i&_nc_ht=scontent.fmru3-1.fna&oh=00_AfC1WC2ipdN0-DjJ0l35uqh7dI0oIK75vGEjOs6CGDhrbw&oe=641A073C")
venue2 = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t39.30808-6/228899050_2000489496787153_1174515254061275659_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=973b4a&_nc_ohc=kSMBFgbO6YkAX9ii9wV&_nc_ht=scontent.fmru3-1.fna&oh=00_AfAAxx0_13CWaUjZyh5v-AE2wJdNwemiq2lfCuP6rxqkKA&oe=6419C1F6")
bol1 = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t39.30808-6/228684305_2000489556787147_8321176337906572074_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=973b4a&_nc_ohc=zCfVKgwH3UMAX8haMUx&_nc_ht=scontent.fmru3-1.fna&oh=00_AfBZlbYWPum9sZu_D2PUY8jX0qbKg0glin3FTI7g18t4lQ&oe=641A71F2")
bol2 = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t39.30808-6/229012970_2000489670120469_2625593706648243266_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=973b4a&_nc_ohc=9bc-nK2IPbcAX_M9oKU&_nc_ht=scontent.fmru3-1.fna&oh=00_AfAbWW43wPZA0ribG-s-yVcAYSPKVQ2Sts4Tdn26Ohcr-Q&oe=641A465B")
noodles = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t39.30808-6/227017515_2000489776787125_5118128147576313181_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=973b4a&_nc_ohc=xb6FfjO9rwMAX-R5M8m&_nc_ht=scontent.fmru3-1.fna&oh=00_AfDhtsyjyQdmSrIk3upkb8RS9a5vSkhJLHZMZn5Y2Shi4w&oe=64190647")
bol3 = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t39.30808-6/227481777_2000489710120465_7419261724049673750_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=973b4a&_nc_ohc=Yk4k2PNQ4xIAX-J9tJ6&_nc_ht=scontent.fmru3-1.fna&oh=00_AfA8HLz8KzNrOK9n2Nt19m1_c9bOrljVvvGcGDMcJmBCwA&oe=6418DB76")
bol4 = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t39.30808-6/228696400_2000489840120452_5329531547870457989_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=973b4a&_nc_ohc=68NuWI2kkLgAX_LXcWc&_nc_ht=scontent.fmru3-1.fna&oh=00_AfALVUUjDro63YscE_SzWqtaC57-K6clC9AAGWGj_q5JRg&oe=6419E50B")
bol5 = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t39.30808-6/278216430_2203515083151259_894797141806663859_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=730e14&_nc_ohc=UMMlUG0JAFcAX_gh8HA&_nc_ht=scontent.fmru3-1.fna&oh=00_AfAfzj-DyVG2nonyGmyZumRMVgVV4yTFuTE7JVWQNqIfrQ&oe=641959EF")

r1.photos.attach(io: venue1, filename: "1.jpeg", content_type: "image/jpeg")
r1.photos.attach(io: venue2, filename: "2.jpeg", content_type: "image/jpeg")
r1.photos.attach(io: bol1, filename: "3.jpeg", content_type: "image/jpeg")
r1.photos.attach(io: bol2, filename: "9.jpeg", content_type: "image/jpeg")
r1.photos.attach(io: noodles, filename: "4.jpeg", content_type: "image/jpeg")
r1.photos.attach(io: bol3, filename: "6.jpeg", content_type: "image/jpeg")
r1.photos.attach(io: bol4, filename: "7.jpeg", content_type: "image/jpeg")
r1.photos.attach(io: bol5, filename: "7.jpeg", content_type: "image/jpeg")
r1.save!
puts " Finished creating first restaurant"

venue1 = URI.open("https://commerces.culturalite.be/cache/LaBonneFourchette_labonnefourchette_vignette_600_600.jpg")
lbf1 = URI.open("https://omnivorescookbook.com/wp-content/uploads/2022/03/220224_Soy-Sauce-Pan-Fried-Noodles_2.jpg")
lbf2 = URI.open("https://www.foodologygeek.com/wp-content/uploads/2021/05/takeout-style-fried-rice-recipe.jpg")
lbf3 = URI.open("https://www.ebox.mu/assets/recipes/l/UQIaYakdw8FAg6OniNFeYANgOCxNZQdv0B2LIeYU.jpg")
lbf4 = URI.open("https://restaurants.mu/blog-admin/wp-content/uploads/2020/01/gateau-piment.jpg")
lbf5 = URI.open("https://restaurants.mu/blog-admin/wp-content/uploads/2020/01/Article-Food-Biryani.jpg")

r2 = Restaurant.new(name: "La Bonne Fourchette", address: "Circonstance, Saint Pierre, Moka, Outer islands of Mauritius, 81407, Mauritius", contact_number: "57752952", user_id: u2.id)
r2.photos.attach(io: venue1, filename: "1.jpeg", content_type: "image/jpeg")
r2.photos.attach(io: lbf1, filename: "5.jpeg", content_type: "image/jpeg")
r2.photos.attach(io: lbf2, filename: "2.jpeg", content_type: "image/jpeg")
r2.photos.attach(io: lbf3, filename: "4.jpeg", content_type: "image/jpeg")
r2.photos.attach(io: lbf4, filename: "5.jpeg", content_type: "image/jpeg")
r2.photos.attach(io: lbf5, filename: "7.jpeg", content_type: "image/jpeg")
r2.save!
puts " Finished creating 2nd restaurant"

venue = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t39.30808-6/269966893_107315098487740_6284825546467207332_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=ly-rXZ5QyV4AX_cMM0s&_nc_ht=scontent.fmru3-1.fna&oh=00_AfDI_0GprtJaSwPYYb9bq0tg6xcQStG5mEbZYuKAua8ImQ&oe=6419C97A")
rz1 = URI.open("https://mauritian-cuisine.com/wp-content/uploads/2022/02/82973132_10157350660009102_9040986778911113216_n.jpg")
rz2 = URI.open("https://restaurants.mu/blog-admin/wp-content/uploads/2018/08/dholl-puri-1.jpg")
rz3 = URI.open("https://i.pinimg.com/originals/9d/f1/23/9df12349fe78eb18486aabb710de3a97.jpg")
rz4 = URI.open("https://www.godelivery.mu/wp-content/uploads/2022/03/Untitled-design-2022-03-10T113435.508.jpg")
rz5 = URI.open("https://restaurants.mu/blog-admin/wp-content/uploads/2020/01/category.jpg")

r3 = Restaurant.new(name: "Roti Zeant", address: "Helvétia, Saint Pierre, Moka, Outer islands of Mauritius, 81407, Mauritius", contact_number: "59891273", user_id: u3.id)
r3.photos.attach(io: venue, filename: "1.jpeg", content_type: "image/jpeg")
r3.photos.attach(io: rz1, filename: "5.jpeg", content_type: "image/jpeg")
r3.photos.attach(io: rz2, filename: "4.jpeg", content_type: "image/jpeg")
r3.photos.attach(io: rz3, filename: "4.jpeg", content_type: "image/jpeg")
r3.photos.attach(io: rz4, filename: "4.jpeg", content_type: "image/jpeg")
r3.photos.attach(io: rz5, filename: "7.jpeg", content_type: "image/jpeg")

r3.save!
puts " Finished creating 3rd restaurant"
venue = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t1.6435-9/99006181_665152930708453_1405381318648266752_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=tdne-b6gGY4AX_QLBOk&_nc_ht=scontent.fmru3-1.fna&oh=00_AfAvtFebgbvfuFTGDq--u6lnx6zdnuwDSAFdLUbxBMqkoA&oe=643C2814")
mm1 = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t1.6435-9/95759522_655587211665025_8015199600505782272_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=730e14&_nc_ohc=AdLX4Uz8lRkAX9ZvGth&_nc_ht=scontent.fmru3-1.fna&oh=00_AfDZak8_t0oGc4DGKKAOtFz8qpC_aMPLKbx7FV_P-q31SQ&oe=643C1577")
mm2 = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t1.6435-9/35327458_258418444715239_557890103989501952_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=e3f864&_nc_ohc=P68gGjGb3r4AX8ppZ_1&_nc_ht=scontent.fmru3-1.fna&oh=00_AfAVPg_EkIDDj8UDJXTOqstcVMvVFe5vo-0b19C4geaZUQ&oe=643C2C44")
mm3 = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t1.6435-9/100743740_669822880241458_6727100223664947200_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=kLhbYq72ax0AX-RYsOh&_nc_ht=scontent.fmru3-1.fna&oh=00_AfBwF9Vdch0FtIaUiPWiUxfqFgblDaClWdnSVksAtQX86g&oe=643C0297")
mm4 = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t1.6435-9/109314789_699142030642876_9123984544289892284_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=9gXr_rAznv4AX8H8b_d&_nc_ht=scontent.fmru3-1.fna&oh=00_AfCp3IPixTh7myIPTnrJT3UDIZiWXmPVw9VM2S2Q1HIoEw&oe=643C067A")
mm5 = URI.open("https://www.foodiesfeed.com/wp-content/uploads/2018/08/chinese-steamed-and-fried-dim-sum-in-wooden-steamers.jpg")

r4 = Restaurant.new(name: "Mine Mangouste", address: "L'Agrément, Saint Pierre, Moka, Mauritius", contact_number: "4334325", user_id: u1.id)
r4.photos.attach(io: venue, filename: "r4.jpeg", content_type: "image/jpeg")
r4.photos.attach(io: mm1, filename: "r4.jpeg", content_type: "image/jpeg")
r4.photos.attach(io: mm2, filename: "r4.jpeg", content_type: "image/jpeg")
r4.photos.attach(io: mm3, filename: "r4.jpeg", content_type: "image/jpeg")
r4.photos.attach(io: mm4, filename: "r4.jpeg", content_type: "image/jpeg")
r4.photos.attach(io: mm5, filename: "r4.jpeg", content_type: "image/jpeg")

r4.save!
puts " Finished creating 4th restaurant"

# seeding more restaurants for demo
venue = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t39.30808-6/326770979_5963191557059763_7664263052042863530_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=vDnn8sUyxxQAX-Wc-ux&_nc_oc=AQmnitgYnCqPBZktGxS3L6Q9t9_L6E5NSZlv6KO_8PoqeeuX3uIB_OyBM80XnRLsaic&_nc_ht=scontent.fmru3-1.fna&oh=00_AfDa-NxOJbdEeRXETWveHZpjyeMCfyMOtAWin9scLLDX-A&oe=6418A920")
bp1 = URI.open("https://egyptianstreets.com/wp-content/uploads/2014/06/large-baklava29.jpg")
bp2 = URI.open("https://www.thidaskitchen.com/wp-content/uploads/2022/11/grilled-beef-skewers.jpg")
bp3 = URI.open("https://cdn.eateasily.com/food/5de7dbfe28f93c4347363b6aa029426f/789854_large.jpg")
bp4 = URI.open("https://cdn.eateasily.com/food/5de7dbfe28f93c4347363b6aa029426f/789846_large.jpg")
bp5 = URI.open("https://cdn.eateasily.com/restaurants/profile/app/400X300/5543.jpg")

r5 = Restaurant.new(name: "Biryani Palace", address: "Kendra Shopping Mall, A7, L'Agrément, Saint Pierre, Moka, Outer islands of Mauritius, 81407, Mauritius", contact_number: "4334325", user_id: u1.id)
r5.photos.attach(io: venue, filename: "1.jpeg", content_type: "image/jpeg")
r5.photos.attach(io: bp1, filename: "4.jpeg", content_type: "image/jpeg")
r5.photos.attach(io: bp2, filename: "5.jpeg", content_type: "image/jpeg")
r5.photos.attach(io: bp3, filename: "3.jpeg", content_type: "image/jpeg")
r5.photos.attach(io: bp4, filename: "6.jpeg", content_type: "image/jpeg")
r5.photos.attach(io: bp5, filename: "2.jpeg", content_type: "image/jpeg")
r5.save!
puts " Finished creating 5th restaurant"

# seeding more restaurants for demo
venue = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t39.30808-6/273800338_798600754393381_2109987965152869725_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=2UwTur2sBUgAX81FLW1&_nc_ht=scontent.fmru3-1.fna&oh=00_AfDrbYefpyHz6X8BBk9yLHiroUTcyOuhNz6jheuOz-bStg&oe=6419A68F")
lkm1 = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t1.6435-9/192744385_1058445554564424_5690126693325530170_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=5c32SQYL3eMAX-5FimJ&_nc_ht=scontent.fmru3-1.fna&oh=00_AfBH1HZNSBLXbltrtzLhMWPDrCBaqNWCJy_q3tHAT9TDWA&oe=643C0572")
lkm2 = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t1.6435-9/181436235_1041428729599440_4225832755016527537_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=CAfVvAqxub8AX-4i95J&_nc_ht=scontent.fmru3-1.fna&oh=00_AfCd5no86QJXxKSHEB82xEJpILQtOQxCWZ_4Zp0ZIz_DLQ&oe=643C1326")
lkm3 = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t1.6435-9/166100298_1020759181666395_2516577845782502165_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=L9SyqBdGgnMAX_iO1f_&_nc_ht=scontent.fmru3-1.fna&oh=00_AfD2uJ2pLMtoguHb27n2bMTUAhKhwcD3MRchGm-8KFJ_aA&oe=643C0FFC")
lkm4 = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t1.6435-9/162983791_1016608735414773_6781050580174703048_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=R7f6vQykll8AX-MagyN&_nc_ht=scontent.fmru3-1.fna&oh=00_AfBDiOHL9ZqDlmshRGb3TLazTUPmA96ss6ATXUcyaZ5Uxg&oe=643C0C32")
lkm5 = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t1.6435-9/82929333_824421797966802_4503140805422592475_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=T4ypMpUxTKAAX9INkUY&_nc_ht=scontent.fmru3-1.fna&oh=00_AfCT8uP3sb0_CQKAy9HhAX6dZMQ57HDxnF054G-Rj70-Nw&oe=643C0F4C")
lkm6 = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t1.6435-9/78602829_692903837785266_239301511715225600_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=NUChVebwTn8AX-epEMT&_nc_ht=scontent.fmru3-1.fna&oh=00_AfCaOPRu-otS0rNkRVWJft-uNu3taai06DiXeeLqo776Nw&oe=643BFF67")
lkm7 = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t1.6435-9/70975109_641611399581177_1199154448136404992_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=dk9IUNrofDkAX8xb3eq&_nc_ht=scontent.fmru3-1.fna&oh=00_AfBTyu39xTjT1ioPtqDTcXt2y9SDwEr2BeZTLiSuawx9og&oe=643C4B58")

r6 = Restaurant.new(name: "Lakaz Mama", address: "B49, Circonstance, Saint Pierre, Moka, Outer islands of Mauritius, 81402, Mauritius", contact_number: "4334325", user_id: u1.id)
r6.photos.attach(io: venue, filename: "1.jpeg", content_type: "image/jpeg")
r6.photos.attach(io: lkm1, filename: "1.jpeg", content_type: "image/jpeg")
r6.photos.attach(io: lkm2, filename: "1.jpeg", content_type: "image/jpeg")
r6.photos.attach(io: lkm3, filename: "1.jpeg", content_type: "image/jpeg")
r6.photos.attach(io: lkm4, filename: "1.jpeg", content_type: "image/jpeg")
r6.photos.attach(io: lkm5, filename: "1.jpeg", content_type: "image/jpeg")
r6.photos.attach(io: lkm6, filename: "1.jpeg", content_type: "image/jpeg")
r6.photos.attach(io: lkm7, filename: "1.jpeg", content_type: "image/jpeg")
# r6.photos.attach(io: bbq, filename: "1.jpeg", content_type: "image/jpeg")
r6.save!
puts " Finished creating 6th restaurant"

# seeding more restaurants for demo
venue = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t39.30808-6/326336611_1946841622189687_5189834574842787110_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=nU-5UedvkRwAX8XFBFs&_nc_ht=scontent.fmru3-1.fna&oh=00_AfA9rw18bnlFZholw-4FDsU_rxhAHJr6UyIqykLXE2bRrg&oe=6419DD37")
sk1 = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t39.30808-6/278871921_759866902057892_936836819113897771_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=e3f864&_nc_ohc=AIbAbWbEXPEAX9w70if&_nc_ht=scontent.fmru3-1.fna&oh=00_AfB7gmKlEgB_M3h2MVTpfBqpUkZIl2DUuv0b9Klqzqkb_Q&oe=64193E9A")
sk2 = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t39.30808-6/309518992_869212317790016_8418808841279691758_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=a26aad&_nc_ohc=n7q-4jgf4O0AX-Fsfjm&_nc_ht=scontent.fmru3-1.fna&oh=00_AfApzqhPVbGF8xGNdV2OquangipkXR-XxxWsluNnm-Wf7g&oe=641932D7")
sk3 = URI.open("https://www.moka.mu/wp-content/uploads/2022/10/Sebs-Kitchen-1.jpg")
sk4 = URI.open("https://www.moka.mu/wp-content/uploads/2022/10/Sebs-Kitchen-2.jpg")

r7 = Restaurant.new(name: "Seb's Kitchen", address: "L'Agrément, Saint Pierre, Moka, Outer islands of Mauritius, 81407, Mauritius", contact_number: "4334325", user_id: u1.id)
r7.photos.attach(io: venue, filename: "1.jpeg", content_type: "image/jpeg")
r7.photos.attach(io: sk1, filename: "6.jpeg", content_type: "image/jpeg")
r7.photos.attach(io: sk2, filename: "7.jpeg", content_type: "image/jpeg")
r7.photos.attach(io: sk3, filename: "3.jpeg", content_type: "image/jpeg")
r7.photos.attach(io: sk4, filename: "4.jpeg", content_type: "image/jpeg")

r7.save!
puts " Finished creating 7th restaurant"

venue = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t1.6435-9/92702555_150947533095413_3216689441074577408_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=174925&_nc_ohc=X5BHv6PcUg4AX8sKylL&_nc_ht=scontent.fmru3-1.fna&oh=00_AfDbTD8L0x_8_Ru1YHHakCYG4-yS-JyBp_Hg_Eb7kZUFfg&oe=643C1C4F")
g1 = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t1.6435-9/92459809_149846493205517_1083805537964916736_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=730e14&_nc_ohc=A73c-OmvzX0AX-Tfk_O&_nc_ht=scontent.fmru3-1.fna&oh=00_AfBFsmSPW9qkVj6GUcvFt5ugEoTbxZcWQiFGRFscSz245Q&oe=643BF74F")
g2 = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t1.6435-9/92871292_1833932993406167_3255055026720079872_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=973b4a&_nc_ohc=feTwDcKBcacAX8vTSVr&_nc_ht=scontent.fmru3-1.fna&oh=00_AfAIvVNb8hbcFoKWqMj_izGpMfHVARvjK5zN83WYLhVUBw&oe=643C1E4B")
g3 = URI.open("https://kirbiecravings.com/wp-content/uploads/2019/09/easy-french-fries-1-768x967.jpg")
g4 = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t31.18172-8/10494302_508849382581208_3211551607510113786_o.jpg?_nc_cat=111&ccb=1-7&_nc_sid=9267fe&_nc_ohc=PA0bh_NYF_YAX_faCZv&_nc_ht=scontent.fmru3-1.fna&oh=00_AfBTukAGbf-f9B8giWzjP3pBWlHyIZf9yXlkGm0UITeWqA&oe=643C252F")
g5 = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t1.6435-9/95795028_159076382282528_5882815253632253952_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=74QFuR2SUhYAX9uJjNa&_nc_oc=AQnvFhJQcduPAiwRs81iqtslZ5jbKP4kGNhDXuPqQUUq71i_jIMmPXoJWSUWzxA6syg&_nc_ht=scontent.fmru3-1.fna&oh=00_AfAWusImQGNsxNz3hZIahcREgbjhcLU3LjefdakCfv7Fcw&oe=643C18BF")

r8 = Restaurant.new(name: "Gloria", address: "Pharmachic, A7, L'Agrément, Saint Pierre, Moka, Outer islands of Mauritius, 81407, Mauritius", contact_number: "4334325", user_id: u1.id)
r8.photos.attach(io: venue, filename: "1.jpeg", content_type: "image/jpeg")
r8.photos.attach(io: g1, filename: "4.jpeg", content_type: "image/jpeg")
r8.photos.attach(io: g2, filename: "7.jpeg", content_type: "image/jpeg")
r8.photos.attach(io: g3, filename: "5.jpeg", content_type: "image/jpeg")
r8.photos.attach(io: g4, filename: "8.jpeg", content_type: "image/jpeg")
r8.photos.attach(io: g5, filename: "3.jpeg", content_type: "image/jpeg")

r8.save!
puts " Finished creating 8th restaurant"
puts " Finished creating restaurants"

puts "creating tags"
t1 = Tag.new(name_tag: "Biryani")
file = URI.open("https://images.pexels.com/photos/5410401/pexels-photo-5410401.jpeg?auto=compress&cs=tinysrgb&w=1200")
t1.photo.attach(io: file, filename: "t1.jpeg", content_type: "image/jpeg")
t1.save!
t2 = Tag.new(name_tag: "Kebab")
file = URI.open("https://images.pexels.com/photos/13201082/pexels-photo-13201082.jpeg")
t2.photo.attach(io: file, filename: "t2.jpeg", content_type: "image/jpeg")
t2.save!
t3 = Tag.new(name_tag: "Fried-noodles")
file = URI.open("https://www.cookerru.com/wp-content/uploads/2022/09/pan-fried-noodles-8-web.jpg.webp")
t3.photo.attach(io: file, filename: "t3.jpeg", content_type: "image/jpeg")
t3.save!
t4 = Tag.new(name_tag: "Boulettes")
file = URI.open("https://scontent.fmru3-1.fna.fbcdn.net/v/t39.30808-6/278216430_2203515083151259_894797141806663859_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=973b4a&_nc_ohc=UMMlUG0JAFcAX_gh8HA&_nc_ht=scontent.fmru3-1.fna&oh=00_AfAfzj-DyVG2nonyGmyZumRMVgVV4yTFuTE7JVWQNqIfrQ&oe=641959EF")
t4.photo.attach(io: file, filename: "t4.jpeg", content_type: "image/jpeg")
t4.save!
t5 = Tag.new(name_tag: "Fried-rice")
file = URI.open("https://www.kitchensanctuary.com/wp-content/uploads/2020/04/Chicken-Fried-Rice-tall-FS-6.webp")
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
restaurants = Restaurant.all
restaurants.each do |restaurant|
  Suggestion.create(tag_id: t1.id, restaurant_id: restaurant.id)
  Suggestion.create(tag_id: t2.id, restaurant_id: restaurant.id)
  Suggestion.create(tag_id: t3.id, restaurant_id: restaurant.id)
  Suggestion.create(tag_id: t4.id, restaurant_id: restaurant.id)
  Suggestion.create(tag_id: t5.id, restaurant_id: restaurant.id)
  Suggestion.create(tag_id: t6.id, restaurant_id: restaurant.id)
  Suggestion.create(tag_id: t7.id, restaurant_id: restaurant.id)
  Suggestion.create(tag_id: t8.id, restaurant_id: restaurant.id)
end
puts " finished creating suggestions"

puts "creating reviews by users not owner"
re1 = Review.new(comment: "Good food, will come again!", rating: 3, restaurant_id: r1.id, user_id: u4.id)
re1.save!
re2 = Review.new(comment: "Delicieux!", rating: 4, restaurant_id: r2.id, user_id: u5.id)
re2.save!
re3 = Review.new(comment: "Zafer la Tamam!", rating: 5, restaurant_id: r4.id, user_id: u5.id)
re3.save!
re4 = Review.new(comment: "Amazing food, Great staff!", rating: 4, restaurant_id: r7.id, user_id: u1.id)
re4.save!
re5 = Review.new(comment: "Tasty food, coming back next week", rating: 3, restaurant_id: r1.id, user_id: u2.id)
re5.save!
re6 = Review.new(comment: "Local meyer!", rating: 3, restaurant_id: r1.id, user_id: u3.id)
re6.save!
re7 = Review.new(comment: "Yummy! Enjoyed a great meal", rating: 4, restaurant_id: r5.id, user_id: u3.id)
re7.save!
re8 = Review.new(comment: "good food is here", rating: 4, restaurant_id: r3.id, user_id: u1.id)
re8.save!
re9 = Review.new(comment: "Staff is great, not the food!", rating: 2, restaurant_id: r6.id, user_id: u2.id)
re9.save!
re10 = Review.new(comment: "Awful experience!", rating: 1, restaurant_id: r7.id, user_id: u1.id)
re10.save!
re11 = Review.new(comment: "Mari Bon!", rating: 5, restaurant_id: r6.id, user_id: u1.id)
re11.save!
re12 = Review.new(comment: "Awful experience!", rating: 1, restaurant_id: r2.id, user_id: u1.id)
re12.save!
re13 = Review.new(comment: "Pas mal!", rating: 3, restaurant_id: r8.id, user_id: u1.id)
re13.save!
re14 = Review.new(comment: "Awful experience!", rating: 2, restaurant_id: r8.id, user_id: u1.id)
re14.save!

puts "Finished populating database!"
