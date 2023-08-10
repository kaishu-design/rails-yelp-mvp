# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  # movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
  # Character.create(name: "Luke", movie: movies.first)

  puts 'Creating the database...'
  Restaurant.destroy_all

  puts 'Creatig restaurants...'
  restaurants = [
    { name: 'ramen', address: '12345 Megro, Tokyo', category: 'japanese' },
    { name: 'pasta', address: '12345 , Rome Italy', category: 'italian' },
    { name: 'pizza', address: '12345 Miran, Italy', category: 'italian' },
    { name: 'fired rice', address: '12345 China', category: 'chinese' },
    { name: 'bakery', address: 'USA', category: 'french' }
  ]

  restaurants.each do |atr|
    restaurant = Restaurant.create!(atr)
    puts "Created #{restaurant.name}"
  end

  puts 'Finished!'
