puts 'Clean the db'
Spot.destroy_all
puts 'Done'

puts "Create example spot"

Spot.create!(
  price_per_night: 100,
  address: "Example street",
  description: "ABC",
  photo_url:"adce",
  name:"name",
  user_id: 1)
