cities = City.create([
{name: "Austin"},
{name: "Columbus"},
{name: "Charlotte"},
{name: "Chicago"},
{name: "Baltimore"},
{name: "Boston"},
{name: "Dallas"},
{name: "Denver"},
{name: "Detroit"},
{name: "El Paso"},
{name: "Fort Worth"},
{name: "Houston"},
{name: "Indianapolis"},
{name: "Jacksonville"},
{name: "Los Angeles"},
{name: "Memphis"},
{name: "New York"},
{name: "Philadelphia"},
{name: "Phoenix"},
{name: "San Antonio"},
{name: "San Diego"},
{name: "San Francisco"},
{name: "San Jose"},
{name: "Seattle"},
])

sports = Sport.create([
  {name: "Tennis",
  image_url: "http://www.stemschooldr.com/wp-content/uploads/2015/09/Sports.jpg"},
  {name: "Basketball",
  image_url: "http://www.stemschooldr.com/wp-content/uploads/2015/09/Sports.jpg"},
  {name: "Rockclimbing",
  image_url: "http://www.stemschooldr.com/wp-content/uploads/2015/09/Sports.jpg"},
  {name: "Golf",
  image_url: "http://www.stemschooldr.com/wp-content/uploads/2015/09/Sports.jpg"},
  {name: "Football",
  image_url: "http://www.stemschooldr.com/wp-content/uploads/2015/09/Sports.jpg"},
  {name: "Rugby",
  image_url: "http://www.stemschooldr.com/wp-content/uploads/2015/09/Sports.jpg"},
  {name: "Baseball",
  image_url: "http://www.stemschooldr.com/wp-content/uploads/2015/09/Sports.jpg"},
  {name: "Table Tennis",
  image_url: "http://www.stemschooldr.com/wp-content/uploads/2015/09/Sports.jpg"},
  {name: "Volleyball",
  image_url: "http://www.stemschooldr.com/wp-content/uploads/2015/09/Sports.jpg"},
  {name: "Cricket",
  image_url: "http://www.stemschooldr.com/wp-content/uploads/2015/09/Sports.jpg"},
  {name: "Hockey",
  image_url: "http://www.stemschooldr.com/wp-content/uploads/2015/09/Sports.jpg"},
  {name: "Soccer",
  image_url: "http://www.stemschooldr.com/wp-content/uploads/2015/09/Sports.jpg"},
])

# Sport.create( name: "Tennis")
# Sport.create( name: "Basketball")
# Sport.create( name: "Rockclimbing")
# Sport.create( name: "Golf")
# Sport.create( name: "Football")
# Sport.create( name: "Rugby")
# Sport.create( name: "Baseball")
# Sport.create( name: "Table Tennis")
# Sport.create( name: "Volleyball")
# Sport.create( name: "Cricket")
# Sport.create( name: "Hockey")
# Sport.create( name: "Soccer")

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



