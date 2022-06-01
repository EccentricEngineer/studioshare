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

studio1 = Studio.create!(
  name: "Alexie Studio",
  user: user1,
  address: "lane 2, Poland",
  photo_url: "https://images.unsplash.com/photo-1598488035139-bdbb2231ce04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
  opening_hour: "2022-05-31 14:22:53.657840837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 200
)

studio2 = Studio.create!(
  name: "Ali Studio",
  user: user2,
  address: "lane 2, UK",
  photo_url: "https://images.unsplash.com/photo-1598488035139-bdbb2231ce04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
  opening_hour: "2022-05-31 14:22:53.657840837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 100
)

studio3 = Studio.create!(
  name: "Claudio Studio",
  user: user3,
  address: "lane 10, France",
  photo_url: "https://images.unsplash.com/photo-1598488035139-bdbb2231ce04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
  opening_hour: "2022-05-31 14:22:53.657850837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 400
)

studio4 = Studio.create!(
  name: "Claudio Studio",
  user: user2,
  address: "lane 9, Spain",
  photo_url: "https://images.unsplash.com/photo-1598488035139-bdbb2231ce04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
  opening_hour: "2022-05-31 14:22:53.657850837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 600
)

reservation1 = Reservation.create!(
  user: user1,
  studio: studio1,
  status: 'reservations has been done!',
  date: DateTime.now()
)

reservation2 = Reservation.create!(
  user: user2,
  studio: studio2,
  status: 'reservations has been done!',
  date: DateTime.now()
)

reservation3 = Reservation.create!(
  user: user3,
  studio: studio3,
  status: 'reservations has been done!',
  date: DateTime.now()
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
