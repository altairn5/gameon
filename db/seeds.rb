City.create( name: "San Francisco")
City.create( name: "New York")
City.create( name: "London")

Sport.create( name: "Tennis")
Sport.create( name: "Basketball")
Sport.create( name: "Rockclimbing")
Sport.create( name: "Other")

10.times do
  user = User.create(
    first_name: FFaker::Name::first_name,
    last_name: FFaker::Name::last_name,
    email: FFaker::Internet::email,
    password: "password",
    age: 25,
    gender: "female" 
  )
   random_city = rand(City.count)
   City.offset(random_city).first.users << user
end


10.times do
  event = Event.create(
    address: "225 Bush Street",
    start_time: Time.now,
    name: FFaker::Sport::name,
    max_headcount: rand(5..10),
    current_headcount: rand(0..5),
    description: FFaker::HipsterIpsum.paragraph,
  )
  random_city = rand(City.count)
   City.offset(random_city).first.events << event
  random_user = rand(User.count)
    User.offset(random_user).first.events << event
  random_sport = rand(Sport.count)
    Sport.offset(random_sport).first.events << event  
end



