City.create( name: "New York")
City.create( name: "Los Angeles")
City.create( name: "Chicago")
City.create( name: "Houston")
City.create( name: "Philadelphia")
City.create( name: "Phoenix")
City.create( name: "San Antonio")
City.create( name: "San Diego")
City.create( name: "Dallas")
City.create( name: "San Jose")
City.create( name: "Austin")
City.create( name: "Jacksonville")
City.create( name: "San Francisco")
City.create( name: "Indianapolis")
City.create( name: "Columbus")
City.create( name: "Fort Worth")
City.create( name: "Charlotte")
City.create( name: "Detroit")
City.create( name: "El Paso")
City.create( name: "Seattle")
City.create( name: "Denver")
City.create( name: "Washington")
City.create( name: "Memphis")
City.create( name: "Boston")
City.create( name: "Baltimore")

Sport.create( name: "Tennis")
Sport.create( name: "Basketball")
Sport.create( name: "Rockclimbing")
Sport.create( name: "Golf")
Sport.create( name: "Football")
Sport.create( name: "Rugby")
Sport.create( name: "Baseball")
Sport.create( name: "Table Tennis")
Sport.create( name: "Volleyball")
Sport.create( name: "Cricket")
Sport.create( name: "Hockey")
Sport.create( name: "Soccer")

# 20.times do
#   user = User.create(
#     first_name: FFaker::Name::first_name,
#     last_name: FFaker::Name::last_name,
#     email: FFaker::Internet::email,
#     password: "password",
#     age: rand(18..50),
#     gender: FFaker::Gender::random,
#   )
#    random_city = rand(City.count)
#    City.offset(random_city).first.users << user
# end


# 20.times do
#   event = Event.create(
#     address: FFaker::AddressUS::street_address + ", " + FFaker::AddressUS::city,
#     date: "2016/10/26",
#     time: "5:00PM",
#     name: FFaker::Sport::name,
#     max_headcount: rand(5..10),
#     current_headcount: 1,
#     description: FFaker::HipsterIpsum.paragraph,
#     user_id: rand(1..20),
#     sport_id: rand(1..4),
#   )

#   random_city = rand(City.count)
#    City.offset(random_city).first.events << event
#   random_user = rand(User.count)
#     User.offset(random_user).first.events << event
#   random_sport = rand(Sport.count)
#     Sport.offset(random_sport).first.events << event
# end



