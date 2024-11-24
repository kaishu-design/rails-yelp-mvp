# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  # movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
  # Character.create(name: "Luke", movie: movies.first)

  puts 'Dleting all restaurants...'
  Restaurant.destroy_all

  puts 'Creatig restaurants...'
  restaurants = [
    { name: 'Taihou Ramen', address: '12345 Megro, Tokyo', category: 'Japanese', phone_number:"09012345678", image:"https://media.istockphoto.com/id/1365977387/photo/ramen-with-steaming-sizzle.jpg?s=612x612&w=0&k=20&c=8-Dij3YocgfVa2kj37msXT_iqzIgbqq0Ta3c1G4_-A0=" },
    { name: 'Buono Pasta', address: '12345 Rome Italy', category: 'Italian', phone_number:"08023456789", image:"https://media.istockphoto.com/id/488960908/photo/homemade-pasta.jpg?s=612x612&w=0&k=20&c=PHYysjDSuwh9D0KYNTqaoAdBD9ho7ksC72oweIjT0dE=" },
    { name: 'Napoli Pizza', address: '12345 Miran, Italy', category: 'Italian', phone_number:"07012341234", image:"https://media.istockphoto.com/id/899907172/photo/baked-tasty-margerita-pizza-near-oven.jpg?s=612x612&w=0&k=20&c=r3J2p-ixkOCZG2VejNxN-CvMHnQhhkOSSh0C9fStV0g=" },
    { name: '中餐厅', address: '12345 China', category: 'Chinese', phone_number:"05098765432", image:"https://media.istockphoto.com/id/913931820/photo/chef-in-restaurant-kitchen-at-stove-with-high-burning-flames.jpg?s=612x612&w=0&k=20&c=rWgTCzIvbWdE-wkyqU06JTnY4cUlnWl5Du0tcjilnTc=" },
    { name: "C'est bon la boulangerie", address: '12345 Paris', category: 'French', phone_number:"06012345678", image:"https://media.istockphoto.com/id/612259650/photo/fresh-whole-wheat-waffles-ice-cream-maple-syrup.jpg?s=612x612&w=0&k=20&c=8Z7q5C9Vsej3Or4UZSoMKI0S97TWBr9dZSJXhUarjkw=" }
  ]

  restaurants.each do |atr|
    restaurant = Restaurant.create!(atr)
    puts "Created #{restaurant.name}"
  end

  puts 'Finished!'
