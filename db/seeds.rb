

# User availability, user location, games preference, skill level

# Locations - time slots and location type
# availability, :bio, :email, :games_preference, :name, :password, :skill_level, :user_location

#Destroy

puts "Destroying Data..."

User.destroy_all
Location.destroy_all
Event.destroy_all

puts "Seeding Data"

u1 = User.create!(
    name: "Nathaniel Wolf",
     bio: "I like to play boardgames!",
     username: "Nathaniel",
     password: "12345",
     email: "nathaniel@gmail.com",
     availability: "Anyday",
     user_location: "Williamsburg, New York, NY",
     games_preference: "Chess, Cards, Scrabble, Ludo, Jenga, Battleship, Monopoly, Risk, Connect Four, Taboo, Uno, Yahtzee",
     skill_level: "Advanced",
)
u2 = User.create!(
     name: "Olivia Manalastas",
     bio: "I like to play boardgames!",
     username: "Olivia",
     password: "12345",
     email: "olivia@gmail.com",
     availability: "Anyday",
     user_location: "Upper East Side, New York, NY",
     games_preference: "Chess, Cards, Scrabble, Ludo, Jenga, Battleship, Monopoly, Risk, Connect Four, Taboo, Uno, Yahtzee",
     skill_level: "Advanced",
)
u3 = User.create!(
     name: "Zoheb Iqbal",
     bio: "I like to play boardgames!",
     username: "Zoheb",
     password: "12345",
     email: "zoheb@gmail.com",
     availability: "Anyday",
     user_location: "East Village, New York, NY",
     games_preference: "Chess, Cards, Scrabble, Ludo, Jenga, Battleship, Monopoly, Risk, Connect Four, Taboo, Uno, Yahtzee",
     skill_level: "Advanced",
)
u4 = User.create!(
     name: "Michael Law",
     bio: "I like to play boardgames!",
     username: "Michael",
     password: "12345",
     email: "michael@gmail.com",
     availability: "Monday, Tuesday, Wednesday, Thursday, Friday, Saturday",
     user_location: "Lower East Side, New York, NY",
     games_preference: "Chess, Cards, Scrabble",
     skill_level: "Intermediate",
)
u5 = User.create!(
     name: "Aaron Fowlkes",
     bio: "I like to play boardgames!",
     username: "Aaron",
     password: "12345",
     email: "aaron@gmail.com",
     availability: "Monday, Tuesday, Wednesday, Thursday, Friday, Saturday",
     user_location: "Chelsea, New York, NY",
     games_preference: "Chess, Cards, Scrabble, Ludo",
     skill_level: "Intermediate",
)
u6 = User.create!(
     name: "Ahnaf Ahmad",
     bio: "I like to play boardgames!",
     username: "Ahnaf",
     password: "12345",
     email: "ahnaf@gmail.com",
     availability: "Monday, Tuesday, Wednesday, Thursday, Friday",
     user_location: "Financial District, New York, NY",
     games_preference: "Chess, Cards, Scrabble, Ludo, Jenga, Battleship, Monopoly, Risk, Connect Four, Taboo, Uno, Yahtzee",
     skill_level: "Intermediate",
)
u7 = User.create!(
     name: "Antonio Arce",
     bio: "I like to play boardgames!",
     username: "Antonio",
     password: "12345",
     email: "antonio@gmail.com",
     availability: "Monday, Tuesday, Wednesday, Thursday, Friday",
     user_location: "Bushwick, New York, NY",
     games_preference: "Chess, Cards, Scrabble, Ludo, Jenga, Battleship, Monopoly, Risk, Connect Four, Taboo, Uno",
     skill_level: "Intermediate",
)
u8 = User.create!(
     name: "Eriche Gonzales",
     bio: "I like to play boardgames!",
     username: "Eriche",
     password: "12345",
     email: "eriche@gmail.com",
     availability: "Monday, Tuesday, Wednesday, Thursday",
     user_location: "Alphabet City, New York, NY",
     games_preference: "Chess, Cards, Scrabble, Ludo, Jenga, Battleship, Monopoly, Risk, Connect Four",
     skill_level: "Intermediate",
)
u9 = User.create!(
     name: "George Duncan",
     bio: "I like to play boardgames!",
     username: "George",
     password: "12345",
     email: "george@gmail.com",
     availability: "Monday, Tuesday, Wednesday, Thursday",
     user_location: "Midtown East, New York, NY",
     games_preference: "Chess, Cards, Scrabble, Ludo, Jenga, Battleship, Monopoly, Risk, Connect Four, Taboo, Uno, Yahtzee",
     skill_level: "Intermediate",
)
u10 = User.create!(
     name: "Mark Delgado",
     bio: "I like to play boardgames!",
     username: "Mark",
     password: "12345",
     email: "mark@gmail.com",
     availability: "Monday, Tuesday, Wednesday",
     user_location: "Tribeca, New York, NY",
     games_preference: "Chess, Cards, Scrabble",
     skill_level: "Intermediate",
)

l1 = Location.create!(
     location_name: "Game house one",
     location_type: "House",
     address: "11 Broadway, New York, NY, 10004",
  )
  l2 = Location.create!(
    location_name: "Game house two",
     location_type: "house",
     address: "120 Hudson St, New York, NY, 10013",
  )
  l3 = Location.create!(
     location_name: "Game house three",
     location_type: "house",
     address: "405 Lexington Ave, New York, NY, 10174",
  )
  l4 = Location.create!(
     location_name: "Game house four",
     location_type: "game room",
     address: "5 Madison Ave, New York, NY, 10010",
  )
  l5 = Location.create!(
     location_name: "Game house five",
     location_type: "game room",
     address: "175 5th Ave, New York, NY, 10010",
  )
  l6 = Location.create!(
     location_name: "Game house six",
     location_type: "school",
     address: "254 S 2nd St, Brooklyn, NY, 11211",
  )
  l7 = Location.create!(
     location_name: "Game house seven",
     location_type: "school",
     address: "266 W 39th St, New York, NY, 10018",
  )
  l8 = Location.create!(
     location_name: "Game house eight",
     location_type: "house",
     address: "Lincoln Center, New York, NY 10023",
  )
  l9 = Location.create!(
     location_name: "Game house nine",
     location_type: "hall",
     address: "204 W 96th St, New York, NY 10025",
  )
  l10 = Location.create!(
     location_name: "Game house ten",
     location_type: "hall",
     address: "35-30 38th St, Queens, NY, 11101",
  )


 e1 = Event.create!(
    name: 'Board game day one!',
    location_id: l1.id,
    user_id: u1.id,
    game_name: 'Chess'
 )

 e2 = Event.create!(
    name: 'Board game day two',
    location_id: l1.id,
    user_id: u1.id,
    game_name: 'Cards'
 )

 e3 = Event.create!(
    name: 'Board game day three',
    location_id: l1.id,
    user_id: u1.id,
    game_name: 'Scrabble'
 )

 e4 = Event.create!(
    name: 'Board game day four',
    location_id: l1.id,
    user_id: u1.id,
    game_name: 'Ludo'
 )

 e5 = Event.create!(
    name: 'Board game day five',
    location_id: l1.id,
    user_id: u1.id,
    game_name: 'Yahtzee'
 )

puts 'Done Seeding'


# puts "Seeding Data"

# 5.times do
#     User.create!(name:Faker::Name.name ,bio:Faker::Lorem.paragraph ,username: Faker::Internet.username ,password: Faker::Internet.password ,email: Faker::Internet.email, user_location: Faker::Address.zip)
#     Location.create!(location_name:Faker::Company.name, address: Faker::Address.full_address)
# end

# 5.times do
#     Event.create!(name: Faker::Lorem.sentence, location_id: Location.all.pluck(:id).sample, time:Faker::Date.in_date_period, user_id: User.all.pluck(:id).sample, game_name: Faker::Lorem.word)
# end

# puts 'Done Seeding'