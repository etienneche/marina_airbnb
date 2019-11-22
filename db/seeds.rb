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

   Spot.create!(
    price_per_night: rand(200..1000),
    marina_name: "Marina Port Olimpic de Barcelona",
    address: "Marina Campania",
    description: "The region of Campania is one of the preferred destinations of tourists around the world, thanks to its historical inheritance, the beautiful coastal sceneries and the famous cities of Naples, Sorrento, Salerno, Positano and others.",
    remote_photo_url: "https://pea-7f65.kxcdn.com/img/image_db/marina_guides_spain_marina_port_vell-942.jpg",
    boat_size: [10,20,30].sample,
    user_id: 1)
     
  Spot.create!(
    price_per_night: rand(200..1000),     
    marina_name: "Marina da Torreira",
    address: "Marina da Torreira",
    description: "Marina which is in the northernmost area of ​​the ria. Not to be missed, with excellent restaurants nearby.",
    remote_photo_url: "https://aister.com/wp-content/uploads/2017/10/porto-torreira.jpg",
    boat_size: [10,20,30].sample,
    user_id: 1)

  Spot.create!(
    price_per_night: rand(200..1000),
    marina_name: "Marina Port Olimpic de Barcelona",
    address: "Marina Campania",
    description: "The region of Campania is one of the preferred destinations of tourists around the world, thanks to its historical inheritance, the beautiful coastal sceneries and the famous cities of Naples, Sorrento, Salerno, Positano and others.",
    remote_photo_url: "https://pea-7f65.kxcdn.com/img/image_db/marina_guides_spain_marina_port_vell-942.jpg",
    boat_size: [10,20,30].sample,
    user_id: 1)
       
  Spot.create!(
    price_per_night: rand(200..1000),
    marina_name: "Marina da Afurada",
    address: "Marina da Afurada",
    description: "Fanstastic Marina! Clean, well maintained, great service (bread delivered to the boat every morning free of charge plus loads of discounts for tourist attractions etc) and Cecilia, the lovely lady at the Marina office is an angel 💙🙌⛵️",
    remote_photo_url: "https://media.timeout.com/images/103973265/image.jpg",
    boat_size: [10,20,30].sample,
    user_id: 1)

 Spot.create!(
    price_per_night: rand(200..1000),
    marina_name: "Puerto Deportivo Marina Isla Canela",
    address: "Puerto Deportivo Marina Isla Canela",
    description: "Marina Isla Canela is a marina located in the natural setting of Isla Canela, within the municipality of Ayamonte, in the Huelva province.",
    remote_photo_url: "https://www.andalucia.org/media/fotos/image_189868_jpeg_800x600_q85.jpg",
    boat_size: [10,20,30].sample,
    user_id: 1)

Spot.create!(
    price_per_night: rand(200..1000),
    marina_name: "Puerto Deportivo de Benidorm",
    address: "Puerto Deportivo de Benidorm",
    description: "Club Náutico Benidorm is situated in the famous coastal town of Benidorm, on the White Coast of the Mediterranean Sea. This marina is identified also by Port of Benidorm. Benidorm is a complex town and a pleasant mix of history and modernism, having tall buildings and city lights.",
    remote_photo_url: "https://cdn.pixabay.com/photo/2018/10/28/23/59/marina-3780195_960_720.jpg",
    boat_size: [10,20,30].sample,
    user_id: 1)


Spot.create!(
    price_per_night: rand(200..1000),
    marina_name: "Marina Viana do Castelo",
    address: "Marina Viana do Castelo",
    description: "Nestled in Castelo's beautiful South Bay, our marina provides boaters with a peaceful, quiet atmosphere away from downtown. The tall swaying palm trees and pristine, park-like setting of Chula Vista Yacht Harbor presents a tropical paradise with uncrowded waters, no boat surge and spectacular sunsets.",
    remote_photo_url: "https://1.bp.blogspot.com/-xqmL9nMFvnk/U9l4XSSp4LI/AAAAAAAAIJc/SeUrndb4vCk/s1600/Marina,+Viana+do+Castelo.jpg",
    boat_size: [10,20,30].sample,
    user_id: 1)


puts "Done, create the spots"

