# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts 'Seed: Deleting existing records...'

Review.delete_all
Reservation.delete_all
Studio.delete_all
User.delete_all

puts 'Seed: Seeding...'

user1 = User.create!(
  name: "Malcolm",
  email: "yes@yes.yes",
  password: "1234567890",
)

user2 = User.create!(
  name: " Nina",
  email: "no@no.no",
  password: "1234567890",
)

user3 = User.create!(
  name: "Michael",
  email: "yo@yes.yes",
  password: "1234567890",
)

user4 = User.create!(
  name: "Yaniv",
  email: "yaniv@live.com",
  password: "1234567890",
)

studio1 = Studio.new(
  name: "Alexie's Studio",
  user: user1,
  address: "London",
  opening_hour: "2022-05-31 14:22:53.657840837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 200
)

file = URI.open('https://images.unsplash.com/photo-1598488035139-bdbb2231ce04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80')
studio1.photo_url.attach(io: file, filename: 'nes.png', content_type: 'image/png')
studio1.save

 studio2 = Studio.create!(
   name: "Ali's Studio",
   user: user2,
   address: "London",
   opening_hour: "2022-05-31 14:22:53.657840837 +0200",
   closing_hour: "2022-05-31 15:22:53.657840937 +0200",
   price: 500
 )

file = URI.open('https://images.unsplash.com/photo-1598488035139-bdbb2231ce04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80')
studio2.photo_url.attach(io: file, filename: 'nes.png', content_type: 'image/png')
studio2.save

# studio3 = Studio.create!(
#   name: "Claudio's Studio",
#   user: user3,
#   address: "London",
#   photo_url: "https://images.unsplash.com/photo-1598488035139-bdbb2231ce04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
#   opening_hour: "2022-05-31 14:22:53.657850837 +0200",
#   closing_hour: "2022-05-31 15:22:53.657840937 +0200",
#   price: 200
# )

# studio4 = Studio.create!(
#   name: "Alex's Studio",
#   user: user2,
#   address: "London",
#   photo_url: "https://images.unsplash.com/photo-1493078770291-aa3109c60ef2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2153&q=80",
#   opening_hour: "2022-05-31 14:22:53.657850837 +0200",
#   closing_hour: "2022-05-31 15:22:53.657840937 +0200",
#   price: 150
# )

# studio5 = Studio.create!(
#   name: "Steph's Studio",
#   user: user3,
#   address: "London",
#   photo_url: "https://images.unsplash.com/photo-1598488035139-bdbb2231ce04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
#   opening_hour: "2022-05-31 14:22:53.657850837 +0200",
#   closing_hour: "2022-05-31 15:22:53.657840937 +0200",
#   price: 350
# )

# studio6 = Studio.create!(
#   name: "Hadil's Studio",
#   user: user3,
#   address: "London",
#   photo_url: "https://images.unsplash.com/photo-1581315489338-90e99097ab3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
#   opening_hour: "2022-05-31 14:22:53.657850837 +0200",
#   closing_hour: "2022-05-31 15:22:53.657840937 +0200",
#   price: 600
# )

# studio7 = Studio.create!(
#   name: "Rak's Studio",
#   user: user1,
#   address: "London",
#   photo_url: "https://images.unsplash.com/photo-1581315489338-90e99097ab3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
#   opening_hour: "2022-05-31 14:22:53.657850837 +0200",
#   closing_hour: "2022-05-31 15:22:53.657840937 +0200",
#   price: 185
# )

# studio8 = Studio.create!(
#   name: "Den's Studio",
#   user: user3,
#   address: "London",
#   photo_url: "https://images.unsplash.com/photo-1581315489338-90e99097ab3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
#   opening_hour: "2022-05-31 14:22:53.657850837 +0200",
#   closing_hour: "2022-05-31 15:22:53.657840937 +0200",
#   price: 300
# )

# studio9 = Studio.create!(
#   name: "Jerry's Studio",
#   user: user3,
#   address: "London",
#   photo_url: "https://images.unsplash.com/photo-1581315489338-90e99097ab3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
#   opening_hour: "2022-05-31 14:22:53.657850837 +0200",
#   closing_hour: "2022-05-31 15:22:53.657840937 +0200",
#   price: 225
# )

# studio10 = Studio.create!(
#   name: "Angie's Studio",
#   user: user3,
#   address: "London",
#   photo_url: "https://images.unsplash.com/photo-1581315489338-90e99097ab3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
#   opening_hour: "2022-05-31 14:22:53.657850837 +0200",
#   closing_hour: "2022-05-31 15:22:53.657840937 +0200",
#   price: 250
# )

# studio11 = Studio.create!(
#   name: "Lester's Studio",
#   user: user3,
#   address: "London",
#   photo_url: "https://images.unsplash.com/photo-1581315489338-90e99097ab3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
#   opening_hour: "2022-05-31 14:22:53.657850837 +0200",
#   closing_hour: "2022-05-31 15:22:53.657840937 +0200",
#   price: 295
# )

# studio12 = Studio.create!(
#   name: "Markham's Studio",
#   user: user3,
#   address: "London",
#   photo_url: "https://images.unsplash.com/photo-1581315489338-90e99097ab3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
#   opening_hour: "2022-05-31 14:22:53.657850837 +0200",
#   closing_hour: "2022-05-31 15:22:53.657840937 +0200",
#   price: 310
# )

# studio13 = Studio.create!(
#   name: "Larry's Studio",
#   user: user4,
#   address: "Liverpool",
#   photo_url: "https://images.unsplash.com/photo-1581315489338-90e99097ab3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
#   opening_hour: "2022-05-31 14:22:53.657850837 +0200",
#   closing_hour: "2022-05-31 15:22:53.657840937 +0200",
#   price: 325
# )

# studio14 = Studio.create!(
#   name: "Marquez's Studio",
#   user: user2,
#   address: "Liverpool",
#   photo_url: "https://images.unsplash.com/photo-1581315489338-90e99097ab3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
#   opening_hour: "2022-05-31 14:22:53.657850837 +0200",
#   closing_hour: "2022-05-31 15:22:53.657840937 +0200",
#   price: 335
# )

# studio15 = Studio.create!(
#   name: "Lindon's Studio",
#   user: user3,
#   address: "Liverpool",
#   photo_url: "https://images.unsplash.com/photo-1581315489338-90e99097ab3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
#   opening_hour: "2022-05-31 14:22:53.657850837 +0200",
#   closing_hour: "2022-05-31 15:22:53.657840937 +0200",
#   price: 215
# )

# studio16 = Studio.create!(
#   name: "Tipton's Studio",
#   user: user3,
#   address: "Liverpool",
#   photo_url: "https://images.unsplash.com/photo-1581315489338-90e99097ab3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
#   opening_hour: "2022-05-31 14:22:53.657850837 +0200",
#   closing_hour: "2022-05-31 15:22:53.657840937 +0200",
#   price: 195
# )

# studio17 = Studio.create!(
#   name: "Rachel's Studio",
#   user: user3,
#   address: "Manchester",
#   photo_url: "https://images.unsplash.com/photo-1581315489338-90e99097ab3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
#   opening_hour: "2022-05-31 14:22:53.657850837 +0200",
#   closing_hour: "2022-05-31 15:22:53.657840937 +0200",
#   price: 305
# )

# studio18 = Studio.create!(
#   name: "Abraham's Studio",
#   user: user3,
#   address: "Manchester",
#   photo_url: "https://images.unsplash.com/photo-1581315489338-90e99097ab3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
#   opening_hour: "2022-05-31 14:22:53.657850837 +0200",
#   closing_hour: "2022-05-31 15:22:53.657840937 +0200",
#   price: 250
# )

# studio19 = Studio.create!(
#   name: "Yaniv's Studio",
#   user: user3,
#   address: "Manchester",
#   photo_url: "https://images.unsplash.com/photo-1581315489338-90e99097ab3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
#   opening_hour: "2022-05-31 14:22:53.657850837 +0200",
#   closing_hour: "2022-05-31 15:22:53.657840937 +0200",
#   price: 215
# )

# studio20 = Studio.create!(
#   name: "Nina's Studio",
#   user: user1,
#   address: "Manchester",
#   photo_url: "https://images.unsplash.com/photo-1581315489338-90e99097ab3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
#   opening_hour: "2022-05-31 14:22:53.657850837 +0200",
#   closing_hour: "2022-05-31 15:22:53.657840937 +0200",
#   price: 265
# )

# studio21 = Studio.create!(
#   name: "Brock's Studio",
#   user: user2,
#   address: "Manchester",
#   photo_url: "https://images.unsplash.com/photo-1581315489338-90e99097ab3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
#   opening_hour: "2022-05-31 14:22:53.657850837 +0200",
#   closing_hour: "2022-05-31 15:22:53.657840937 +0200",
#   price: 325
# )

# studio22 = Studio.create!(
#   name: "Endem's Studio",
#   user: user3,
#   address: "Liverpool",
#   photo_url: "https://images.unsplash.com/photo-1581315489338-90e99097ab3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
#   opening_hour: "2022-05-31 14:22:53.657850837 +0200",
#   closing_hour: "2022-05-31 15:22:53.657840937 +0200",
#   price: 292
# )

# studio23 = Studio.create!(
#   name: "Gola's Studio",
#   user: user3,
#   address: "Liverpool",
#   photo_url: "https://images.unsplash.com/photo-1581315489338-90e99097ab3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
#   opening_hour: "2022-05-31 14:22:53.657850837 +0200",
#   closing_hour: "2022-05-31 15:22:53.657840937 +0200",
#   price: 330
# )

# studio24 = Studio.create!(
#   name: "Lola's Studio",
#   user: user3,
#   address: "Liverpool",
#   photo_url: "https://images.unsplash.com/photo-1581315489338-90e99097ab3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
#   opening_hour: "2022-05-31 14:22:53.657850837 +0200",
#   closing_hour: "2022-05-31 15:22:53.657840937 +0200",
#   price: 225
# )

reservation1 = Reservation.create!(
  user: user1,
  studio: studio1,
  status: 'Reservation Successful!',
  date: DateTime.now
)

reservation2 = Reservation.create!(
  user: user2,
  studio: studio1,
  status: 'Reservation Successful!',
  date: DateTime.now
)

reservation3 = Reservation.create!(
  user: user3,
  studio: studio1,
  status: 'Reservation Successful!',
  date: DateTime.now
)

reservation4 = Reservation.create!(
  user: user4,
  studio: studio1,
  status: 'Reservation Successful!',
  date: DateTime.now
)


# review1 = Review.create!(
#   rating: 5,
#   comment: "That trip was a wonderful experience!",
#   user: user1,
#   studio: studio1,
#   reservation: reservation1
# )

# review2 = Review.create!(
#   rating: 5,
#   comment: "That trip was a wonderful experience!",
#   user: user2,
#   studio: studio2,
#   reservation: reservation2
# )

# review3 = Review.create!(
#   rating: 5,
#   comment: "That trip was a wonderful experience!",
#   user: user3,
#   studio: studio3,
#   reservation: reservation3
# )

puts 'Seed: Finished seeding!'
