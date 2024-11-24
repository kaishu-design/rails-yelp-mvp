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
    { name: 'Taihou Ramen', address: '12345 Megro, Tokyo', category: 'Japanese', phone_number:"09012345678" },
    { name: 'Buono Pasta', address: '12345 Rome Italy', category: 'Italian', phone_number:"08023456789" },
    { name: 'Napoli Pizza', address: '12345 Miran, Italy', category: 'Italian', phone_number:"07012341234" },
    { name: '中餐厅', address: '12345 China', category: 'Chinese', phone_number:"05098765432" },
    { name: "C'est bon la boulangerie", address: '12345 Paris', category: 'French', phone_number:"06012345678" }
  ]

  restaurants.each do |atr|
    restaurant = Restaurant.create!(atr)
    puts "Created #{restaurant.name}"
  end

  puts 'Finished!'
