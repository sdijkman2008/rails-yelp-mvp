# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Dishoom",
    address:      "Hoofdstraat 14, 1480 FE Hilversum",
    phone_number:  "+31 20 6567899",
    category:      "chinese"
  },
  {
    name:         "Pizza East",
    address:      "Koninginneweg 9, 1409 TG Bussum",
    phone_number:  "+31 35 6931662",
    category:      "italian"
  },
  {
    name:         "Louchebem",
    address:      "Kerkstraat 14, 1280 FE Haarlem",
    phone_number:  "+31 20 6567899",
    category:      "french"
  },
  {
    name:         "Waffels & chicken",
    address:      "Stroopweg 19, 1009 BT Amsterdam",
    phone_number:  "+31 35 6931662",
    category:      "belgian"
  },
  {
    name:         "Sepukku",
    address:      "Doodstraat 24, 2380 FE Beverwijk",
    phone_number:  "+31 20 6567899",
    category:      "japanese"
  }
]

Restaurant.create!(restaurants_attributes)
puts "Finished restaurants!"

reviews_attributes = [
  {
    content:         "There was a fly in my soup",
    restaurant_id:   1,
    rating:          1
  },
  {
    content:         "Great ambiance, good service",
    restaurant_id:   2,
    rating:          4
  },
  {
    content:         "There was a banana in my soup",
    restaurant_id:   1,
    rating:          1
  },
  {
    content:         "Best restaurant ever",
    restaurant_id:   4,
    rating:          5
  }
]
Review.create!(reviews_attributes)
puts "Finished reviews!"
