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


studio2 = Studio.new(
  name: "Alex's Studio",
  user: user1,
  address: "London",
  opening_hour: "2022-05-31 14:22:53.657840837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 200
)

file = URI.open('https://media.istockphoto.com/photos/abbey-road-studios-london-picture-id1203045502?s=612x612')
studio2.photo_url.attach(io: file, filename: 'nes.png', content_type: 'image/png')
studio2.save

studio3 = Studio.new(
  name: "Claudio's Studio",
  user: user1,
  address: "London",
  opening_hour: "2022-05-31 14:22:53.657840837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 200
)

file = URI.open('https://image.shutterstock.com/image-photo/hardworking-musician-working-indoors-close-600w-1258763251.jpg')
studio3.photo_url.attach(io: file, filename: 'nes.png', content_type: 'image/png')
studio3.save

studio4 = Studio.new(
  name: "UB4 Studios",
  user: user2,
  address: "London",
  opening_hour: "2022-05-31 14:22:53.657840837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 200
)

file = URI.open('https://image.shutterstock.com/image-photo/african-american-sound-engineer-working-600w-568181797.jpg')
studio4.photo_url.attach(io: file, filename: 'nes.png', content_type: 'image/png')
studio4.save


studio5 = Studio.new(
  name: "Bosco Studios",
  user: user3,
  address: "London",
  opening_hour: "2022-05-31 14:22:53.657840837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 200
)

file = URI.open('https://image.shutterstock.com/image-photo/deejay-work-600w-505081018.jpg')
studio5.photo_url.attach(io: file, filename: 'nes.png', content_type: 'image/png')
studio5.save

studio6 = Studio.new(
  name: "Rhythm Studios",
  user: user4,
  address: "Manchester",
  opening_hour: "2022-05-31 14:22:53.657840837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 250
)

file = URI.open('https://image.shutterstock.com/image-photo/beautiful-stylish-female-audio-engineer-600w-1760614151.jpg')
studio6.photo_url.attach(io: file, filename: 'nes.png', content_type: 'image/png')
studio6.save

studio7 = Studio.new(
  name: "Red Gables Facilities Ltd",
  user: user1,
  address: "Manchester",
  opening_hour: "2022-05-31 14:22:53.657840837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 200
)

file = URI.open('https://image.shutterstock.com/image-photo/music-rehearsal-space-drum-kit-600w-1125206549.jpg')
studio7.photo_url.attach(io: file, filename: 'nes.png', content_type: 'image/png')
studio7.save


studio8 = Studio.new(
  name: "Papa Joes",
  user: user2,
  address: "Leeds",
  opening_hour: "2022-05-31 14:22:53.657840837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 50
)

file = URI.open('https://image.shutterstock.com/image-photo/recording-studio-control-room-complete-600w-1178434726.jpg')
studio8.photo_url.attach(io: file, filename: 'nes.png', content_type: 'image/png')
studio8.save

studio9 = Studio.new(
  name: "KVH Studios",
  user: user3,
  address: "London",
  opening_hour: "2022-05-31 14:22:53.657840837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 400
)

file = URI.open('https://image.shutterstock.com/image-photo/interior-recording-studio-600w-710618158.jpg')
studio9.photo_url.attach(io: file, filename: 'nes.png', content_type: 'image/png')
studio9.save

studio10 = Studio.new(
  name: "Beat Street Studio - Recording",
  user: user4,
  address: "Liverpool",
  opening_hour: "2022-05-31 14:22:53.657840837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 100
)

file = URI.open('https://images.unsplash.com/photo-1492891651366-a5c2839dc64b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2034&q=80')
studio10.photo_url.attach(io: file, filename: 'nes.png', content_type: 'image/png')
studio10.save


studio11 = Studio.new(
  name: "Rehearsals",
  user: user1,
  address: "Leeds",
  opening_hour: "2022-05-31 14:22:53.657840837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 75
)

file = URI.open('https://images.unsplash.com/photo-1649456674221-12b66d8a6fa8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80')
studio11.photo_url.attach(io: file, filename: 'nes.png', content_type: 'image/png')
studio11.save

studio12 = Studio.new(
  name: "House of Mook",
  user: user2,
  address: "London",
  opening_hour: "2022-05-31 14:22:53.657840837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 200
)

file = URI.open('https://images.unsplash.com/photo-1649438803136-cc9d41450ff6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80')
studio12.photo_url.attach(io: file, filename: 'nes.png', content_type: 'image/png')
studio12.save


studio13 = Studio.new(
  name: "Premium Sound Studio",
  user: user3,
  address: "Manchester",
  opening_hour: "2022-05-31 14:22:53.657840837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 150
)

file = URI.open('https://media.istockphoto.com/photos/audio-engineer-artists-working-on-new-music-production-track-list-picture-id1314735819')
studio13.photo_url.attach(io: file, filename: 'nes.png', content_type: 'image/png')
studio13.save

studio14 = Studio.new(
  name: "Recording Studio FX",
  user: user4,
  address: "London",
  opening_hour: "2022-05-31 14:22:53.657840837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 330
)

file = URI.open('https://images.unsplash.com/photo-1649437636817-ff86121a83bf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2832&q=80')
studio14.photo_url.attach(io: file, filename: 'nes.png', content_type: 'image/png')
studio14.save

studio15 = Studio.new(
  name: "Rec Rooms Studios LTD",
  user: user1,
  address: "Liverpool",
  opening_hour: "2022-05-31 14:22:53.657840837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 120
)

file = URI.open('https://media.istockphoto.com/photos/recording-studio-suite-picture-id146760417')
studio15.photo_url.attach(io: file, filename: 'nes.png', content_type: 'image/png')
studio15.save


studio16 = Studio.new(
  name: "Audio Always",
  user: user1,
  address: "Leeds",
  opening_hour: "2022-05-31 14:22:53.657840837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 90
)

file = URI.open('https://media.istockphoto.com/photos/electrical-equipment-for-recording-and-computer-monitor-on-workplace-picture-id1176082550')
studio16.photo_url.attach(io: file, filename: 'nes.png', content_type: 'image/png')
studio16.save

studio17 = Studio.new(
  name: "The Sound House",
  user: user2,
  address: "London",
  opening_hour: "2022-05-31 14:22:53.657840837 +0200",
  closing_hour: "2022-05-31 15:22:53.657840937 +0200",
  price: 500
)

file = URI.open('https://media.istockphoto.com/photos/recording-equipment-in-a-professional-recording-studio-picture-id1362977640?s=612x612')
studio17.photo_url.attach(io: file, filename: 'nes.png', content_type: 'image/png')
studio17.save

reservation1 = Reservation.create!(
  user: user3,
  studio: studio1,
  status: 'Reservation Successful!',
  date: DateTime.now
)

reservation2 = Reservation.create!(
  user: user2,
  studio: studio12,
  status: 'Reservation Successful!',
  date: DateTime.now
)

reservation3 = Reservation.create!(
  user: user3,
  studio: studio11,
  status: 'Reservation Successful!',
  date: DateTime.now
)

reservation4 = Reservation.create!(
  user: user4,
  studio: studio3,
  status: 'Reservation Successful!',
  date: DateTime.now
)

puts 'Seed: Finished seeding!'
