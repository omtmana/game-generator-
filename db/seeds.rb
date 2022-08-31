# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Destroy

puts "Destroying Data..."

User.destroy_all
Location.destroy_all
Event.destroy_all

# puts "Seeding Data"
# u1 = User.create!(
#     name: 'Andrea Manalastas',
#     bio: 'I love playing tennis!',
#     username: 'amanal',
#     password: '12345',
#     email: 'antmana@gmail.com',
#     availability: 'Saturday, Sunday',
#     user_location: 'Chicago, IL'
#     games_preference: 'Tennis'
#     skill_level: 'Intermediate'
# )

#  l1 = Location.create!(
#     location_name: 'Andrea\'s House',
#     time_slots: ,
#     location_type: 'House',
#     address: 'Somewhere in America'
#  )

#  e1 = Event.create!(
#     name: 'Tennis Match!'
#     location_id: l1.id,
#     user_id: u1.id,
#     game_name: 'Tennis Match'
#  )

# puts 'Done Seeding'

puts "Destroying Data..."

User.destroy_all
Location.destroy_all
Event.destroy_all

puts "Seeding Data"

5.times do
    User.create!(name:Faker::Name.name ,bio:Faker::Lorem.paragraph ,username: Faker::Internet.username ,password: Faker::Internet.password ,email: Faker::Internet.email)
    Location.create!(location_name:Faker::Company.name, address: Faker::Address.full_address)
end

5.times do
    Event.create!(name: Faker::Lorem.sentence, location_id: Location.all.pluck(:id).sample, time:Faker::Date.in_date_period, user_id: User.all.pluck(:id).sample, game_name: Faker::Lorem.word)
end

puts 'Done Seeding'