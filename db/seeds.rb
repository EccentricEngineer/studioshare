# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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

studio1 = Studio.create!(
  name: "Alexie's Studio",
  user: user1,
  address: "13th St, New York, NY 10011",
  photo_url: "https://images.unsplash.com/photo-1598488035139-bdbb2231ce04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
  opening_hour: "2022-05-31 14:22:53.657840837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 200
)

studio2 = Studio.create!(
  name: "Ali's Studio",
  user: user2,
  address: "18 Mayfair Street, London",
  photo_url: "https://images.unsplash.com/photo-1598488035139-bdbb2231ce04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
  opening_hour: "2022-05-31 14:22:53.657840837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 500
)

studio3 = Studio.create!(
  name: "Claudio's Studio",
  user: user3,
  address: "21 Boulevard Road, Paris",
  photo_url: "https://images.unsplash.com/photo-1598488035139-bdbb2231ce04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
  opening_hour: "2022-05-31 14:22:53.657850837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 200
)

studio4 = Studio.create!(
  name: "Alex's Studio",
  user: user2,
  address: "290 9TH NEW YORK NY 10001-5713",
  photo_url: "https://images.unsplash.com/photo-1493078770291-aa3109c60ef2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2153&q=80",
  opening_hour: "2022-05-31 14:22:53.657850837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 150
)

studio5 = Studio.create!(
  name: "Steph's Studio",
  user: user3,
  address: "6318 Hollywood Blvd",
  photo_url: "https://images.unsplash.com/photo-1598488035139-bdbb2231ce04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
  opening_hour: "2022-05-31 14:22:53.657850837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 350
)

studio6 = Studio.create!(
  name: "Hadil's Studio",
  user: user3,
  address: "9836 Hollywood Blvd",
  photo_url: "https://images.unsplash.com/photo-1581315489338-90e99097ab3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
  opening_hour: "2022-05-31 14:22:53.657850837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 600
)

reservation1 = Reservation.create!(
  user: user1,
  studio: studio1,
  status: 'Reservation Successful!',
  date: DateTime.now
)

reservation2 = Reservation.create!(
  user: user2,
  studio: studio2,
  status: 'Reservation Successful!',
  date: DateTime.now
)

reservation3 = Reservation.create!(
  user: user3,
  studio: studio3,
  status: 'Reservation Successful!',
  date: DateTime.now
)

reservation4 = Reservation.create!(
  user: user4,
  studio: studio4,
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
