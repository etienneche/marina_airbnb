puts 'Clean the db'
Spot.destroy_all
puts 'Done'

puts "Create example spot"

10.times do
  Spot.create!(
    price_per_night: rand(200..1000),
    address: "Cascais Marina, Casa de São Bernardo, Cascais",
    description: Faker::Restaurant.description,
    photo_url:"https://source.unsplash.com/featured/?",
    name:"#{Faker::Address.city}'s Marina",
    user_id: 1)
end
