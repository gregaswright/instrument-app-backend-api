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

10.times do
    Listing.create(brand: Faker::Music.band, instrument_type: Faker::Music.instrument, history: "old", weight: 50, age: 50, used: true, price: 50, img: nil, user: User.all.sample, in_cart: false)  
end

Cart.create(user_id: 1, history: false)
Cart.create(user_id: 2, history: false)