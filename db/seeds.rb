# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Listing.destroy_all

User.create(username: "Bilbo", password: "123", email: "bilbo@gmail.com", wallet: 500)
User.create(username: "Jim", password: "123", email: "bilbo@gmail.com", wallet: 500)


Listing.create(brand: "Fender Stratocaster", instrument_type: "Guitar", history: "Been in my family for two generations, looking for a good home.", weight: 8, age: 30, used: true, price: 600, img: "https://www.fmicassets.com/Damroot/GuitarVertDesktopJpg/10001/0113912747_fen_ins_frt_1_rr.jpg", user_id: 1, in_cart: false)

Listing.create(brand: "Stomvi USA", instrument_type: "Trumpet", history: "Need to downgrade, was just very expensive and need the money, its brand new", weight: 2, age: 1, used: false, price: 4000, img: "https://stomvi-usa.com/wp-content/uploads/2019/02/Screen-Shot-2019-02-07-at-12.41.04-PM.png", user_id: 1, in_cart: false)  

Listing.create(brand: "Ibenez", instrument_type: "Bass Guitar", history: "Bought it for my son, he never plays it so I'm selling it.", weight: 10, age: 2, used: true, price: 60, img: "https://static.turbosquid.com/Preview/2019/12/22__22_20_40/ibanez670_render0000.jpgA76A4B1B-23EC-44DE-9A0C-62DC05F99BB9Large.jpg", user_id: 1, in_cart: false)  

Listing.create(brand: "Geziski", instrument_type: "Violin", history: "Made in post revolution Russia, one of a kind.", weight: 3, age: 200, used: true, price: 6000, img: "https://cdn.britannica.com/27/176327-050-67702AB2/Violin.jpg", user_id: 2, in_cart: false)  

Listing.create(brand: "Dobski", instrument_type: "Flute", history: "Great starter flute, no previous owners.", weight: 1, age: 3, used: false, price: 150, img: "https://upload.wikimedia.org/wikipedia/commons/f/f7/Western_concert_flute_%28Yamaha%29.jpg", user_id: 2, in_cart: false)  

Listing.create(brand: "Unknown", instrument_type: "Acustic Guitar", history: "Not a great guitar, but it works.", weight: 5, age: 1, used: false, price: 20, img: "https://image.made-in-china.com/2f0j00hwOQFAqKyRuc/Solid-Top-D45-Cutaway-Acoustic-Guitar-41-Inches-Acoustic-Electric-Guitar-Dreadnought-Body-Chartin-Electrical-Acoustic-Guitar-Rosewood-Body-Classial-Folk.jpg", user_id: 2, in_cart: false)  

Cart.create(user_id: 1, history: false)
Cart.create(user_id: 2, history: false)