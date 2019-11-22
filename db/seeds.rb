puts 'Clean the db'
Spot.destroy_all
puts 'Done'

puts "Create the spots"

  Spot.create!(
    price_per_night: rand(200..1000),
    marina_name: "Cascais Marina",
    address: "Cascais Marina",
    description: "The Cascais Marina, in Cascais, Portugal, is the largest marina on the Portuguese Riviera and the third largest marina in the country.",
    remote_photo_url: "https://www.triede.pt/img/cache/32699699c55a0cd0e38321937e1b36a5.jpg",
    boat_size: [10,20,30].sample,
    user_id: 1)
# done

  Spot.create!(
    price_per_night: rand(200..1000),
    marina_name: "Marina Parque das Nacoes",
    address: "Passeio Neptuno, Lisboa",
    description: "Marina Parque das Nações, located in Lisbon, Portugal, is the perfect reason to sail upstream. It is an urban marina, just 5 minutes from the Lisbon airport, with easy access to the city centre and to the cosmopolitan life of a European capital. Marina Parque das Nações promotes sports like cycling, ping pong, sailing and canoeing, for both children and adults.",
    remote_photo_url: "https://media-cdn.tripadvisor.com/media/photo-s/17/e6/1b/df/marina-parque-de-las.jpg",
    boat_size: [10,20,30].sample,
    user_id: 1)
# done

  Spot.create!(
    price_per_night: rand(200..1000),
    marina_name: "Marina de Lagos",
    address: "Marina de Lagos",
    description: "The great hang out spot for lunch, dinner and to book water activities at. Lots of eating options, & stone's throw from train station. A lovely marina for sure.",
    remote_photo_url: "https://www.marinadelagos.pt/_files/content/DJI_0053-Pano.jpg",
    boat_size: [10,20,30].sample,
    user_id: 1)
#done

  Spot.create!(
    price_per_night: rand(200..1000),
    marina_name: "Marina de Portimão",
    address: "Marina de Portimão",
    description: "A beautiful marina where you can also find top class boat and motorbike dealers, and a cool coffee shop where you can hear stories from the actual fishermen.",
    remote_photo_url: "https://lifecooler.com/files/registos/imagens/337684/249823.jpg",
    boat_size: [10,20,30].sample,
    user_id: 1)
#done

   Spot.create!(
    price_per_night: rand(200..1000),
    marina_name: "Marina de Oeiras",
    address: "Marina de Oeiras",
    description: "Fantastic marina. Staff are friendly and helpful beyond the norm. This includes free bread every morning.The electricity and wifi are reliable and best we have had in Portugal so far. The marina restaurants are great, especially Charkoal. The berthing fees are very competitive. ",
    remote_photo_url: "https://magnolia-portugal.dunegestion.com/public/magnolia-portugal/tHcIp_marina4.jpg",
    boat_size: [10,20,30].sample,
    user_id: 1)
#done

   Spot.create!(
    price_per_night: rand(200..1000),
    marina_name: "Marina da Figueira da Foz",
    address: "Marina da Figueira da Foz",
    description: "The harbourmaster is very nice. There are easy acces to the harbour. But there can be a lot of current depending of the tide in the harbour.",
    remote_photo_url: "https://cnaff.pt/sites/default/files/basicpage/Marina%20%282%29.jpg",
    boat_size: [10,20,30].sample,
    user_id: 1)

   Spot.create!(
    price_per_night: rand(200..1000),
    marina_name: "Marina de Vila Franca de Xira",
    address: "Marina de Vila Franca de Xira",
    description: "Very well located this Marina, pertissimo of the trains and very near the center of the Villa. Friendly staff and a very nice park to spend a well spent afternoon. The prices of this marina are much more competitive than those practiced for example in Lisbon and yet it is only 30 min from the center of Lisbon by train. I recommend.",
    remote_photo_url: "https://www.marinaparquedasnacoes.pt/data/uploads/2015/05/vf-xira01.jpg",
    boat_size: [10,20,30].sample,
    user_id: 1)


#done

puts "Done, create the spots"

