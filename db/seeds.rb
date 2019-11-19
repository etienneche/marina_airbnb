puts 'Clean the db'
Spot.destroy_all
puts 'Done'

puts "Create 5 spots"

  Spot.create!(
    price_per_night: rand(200..1000),
    marina_name: "Cascais Marina",
    address: "Cascais Marina, Casa de São Bernardo, Cascais",
    description: "The Cascais Marina, in Cascais, Portugal, is the largest marina on the Portuguese Riviera and the third largest marina in the country.",
    photo_url: "https://images.unsplash.com/photo-1566021988761-550ac4bd5c60?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
    user_id: 1)

  Spot.create!(
    price_per_night: rand(200..1000),
    marina_name: "Marina da Afurada",
    address: "R. da Praia 430, 4400-554 Vila Nova de Gaia",
    description: "The Porto Marina, in Porto, Portugal, is the largest marina on the Portuguese Riviera and the third largest marina in the country.",
    photo_url: "https://images.unsplash.com/photo-1566912209144-461904f28313?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
    user_id: 1)

  Spot.create!(
    price_per_night: rand(200..1000),
    marina_name: "Puerto Deportivo Marina Isla Canela",
    address: "21409, Huelva, Spain",
    description: "The Puerto Deportivo Marina Isla Canela is the largest marina on the Portuguese Riviera and the third largest marina in the country.",
    photo_url: "https://images.unsplash.com/photo-1491251880772-1fe1c8b6d5f6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
    user_id: 1)

  Spot.create!(
    price_per_night: rand(200..1000),
    marina_name: "Yacht Port Cartagena",
    address: "Paseo Alfonso XII, 24, 30202 Cartagena, Murcia, Spain",
    description: "This port is the largest marina on the Spain Riviera and the third largest marina in the country.",
    photo_url: "https://images.unsplash.com/photo-1564642419460-a3ee13ab1d4c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2220&q=80",
    user_id: 1)

   Spot.create!(
    price_per_night: rand(200..1000),
    marina_name: "Marina de Lagos",
    address: "Edifício da Administração, 8600-315 Lagos",
    description: "The great hang out spot for lunch, dinner and to book water activities at. Lots of eating options, & stone's throw from train station. A lovely marina for sure.",
    photo_url: "https://images.unsplash.com/photo-1452858426607-6e3f8858ceb0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1934&q=80",
    user_id: 1)


