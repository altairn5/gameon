City.create( name: "San Francisco")
City.create( name: "New York")
City.create( name: "Davis")
City.create( name: "Austin")
City.create( name: "Los Angeles")
City.create( name: "Seattle")
City.create( name: "Orange County")
City.create( name: "Portland")
City.create( name: "Washington D.C")
City.create( name: "Las Vegas")

Sport.create( name: "Tennis")
Sport.create( name: "Basketball")
Sport.create( name: "Rockclimbing")
Sport.create( name: "Other")

20.times do
  user = User.create(
    first_name: FFaker::Name::first_name,
    last_name: FFaker::Name::last_name,
    email: FFaker::Internet::email,
    password: "password",
    age: rand(18..50),
    gender: FFaker::Gender::random,
  )
   random_city = rand(City.count)
   City.offset(random_city).first.users << user
end


20.times do
  event = Event.create(
    address: FFaker::AddressUS::street_address + ", " + FFaker::AddressUS::city + ", " + FFaker::AddressUS::state_abbr,
    date: "10/26/2015",
    time: "5:00PM",
    name: FFaker::Sport::name,
    max_headcount: rand(5..10),
    current_headcount: 0,
    description: FFaker::HipsterIpsum.paragraph,
    user_id: rand(1..20),
  )

  random_city = rand(City.count)
   City.offset(random_city).first.events << event
  random_user = rand(User.count)
    User.offset(random_user).first.events << event
  random_sport = rand(Sport.count)
    Sport.offset(random_sport).first.events << event
end



