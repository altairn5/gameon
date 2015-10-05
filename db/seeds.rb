City.create( name: "San Francisco")
City.create( name: "New York")
City.create( name: "London")

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
    start_date: Date.now,
    start_time: Time.now,
    max_headcount: 2,
    current_headcount: 1,
    description: "try this out" 
  )
    random_city = rand(City.count)
   City.offset(random_city).first.events << event

end




