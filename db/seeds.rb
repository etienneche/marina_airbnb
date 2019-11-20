puts 'Clean the db'
Spot.destroy_all
puts 'Done'

puts


puts "Create 5 spots"

  User.create!(
    email:"test@gmail.com",
    name: "Test Accoumt"
  )


  Spot.create!(
    price_per_night: rand(200..1000),
    marina_name: "Cascais Marina",
    address: "Cascais Marina",
    description: "The Cascais Marina, in Cascais, Portugal, is the largest marina on the Portuguese Riviera and the third largest marina in the country.",
    photo_url: "https://www.triede.pt/img/cache/32699699c55a0cd0e38321937e1b36a5.jpg",
    user_id: 1)
# done

  Spot.create!(
    price_per_night: rand(200..1000),
    marina_name: "Marina Parque das Nacoes",
    address: "Passeio Neptuno, Lisboa",
    description: "Marina Parque das Nações, located in Lisbon, Portugal, is the perfect reason to sail upstream. It is an urban marina, just 5 minutes from the Lisbon airport, with easy access to the city centre and to the cosmopolitan life of a European capital. Marina Parque das Nações promotes sports like cycling, ping pong, sailing and canoeing, for both children and adults.",
    photo_url: "https://media-cdn.tripadvisor.com/media/photo-s/17/e6/1b/df/marina-parque-de-las.jpg",
    user_id: 1)
# done

  Spot.create!(
    price_per_night: rand(200..1000),
    marina_name: "Marina de Lagos",
    address: "Marina de Lagos",
    description: "The great hang out spot for lunch, dinner and to book water activities at. Lots of eating options, & stone's throw from train station. A lovely marina for sure.",
    photo_url: "https://www.marinadelagos.pt/_files/content/DJI_0053-Pano.jpg",
    user_id: 1)
#done

  Spot.create!(
    price_per_night: rand(200..1000),
    marina_name: "Marina de Portimão",
    address: "Marina de Portimão",
    description: "A beautiful marina where you can also find top class boat and motorbike dealers, and a cool coffee shop where you can hear stories from the actual fishermen.",
    photo_url: "https://lifecooler.com/files/registos/imagens/337684/249823.jpg",
    user_id: 1)
#done

   Spot.create!(
    price_per_night: rand(200..1000),
    marina_name: "Marina de Oeiras",
    address: "Marina de Oeiras",
    description: "Fantastic marina. Staff are friendly and helpful beyond the norm. This includes free bread every morning.The electricity and wifi are reliable and best we have had in Portugal so far. The marina restaurants are great, especially Charkoal. The berthing fees are very competitive. ",
    photo_url: "https://magnolia-portugal.dunegestion.com/public/magnolia-portugal/tHcIp_marina4.jpg",
    user_id: 1)
#done

   Spot.create!(
    price_per_night: rand(200..1000),
    marina_name: "Marina da Figueira da Foz",
    address: "Marina da Figueira da Foz",
    description: "The harbourmaster is very nice. There are easy acces to the harbour. But there can be a lot of current depending of the tide in the harbour.",
    photo_url: "https://cnaff.pt/sites/default/files/basicpage/Marina%20%282%29.jpg",
    user_id: 1)

#done

