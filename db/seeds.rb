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
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '123',
    category: 'chinese'

  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  '456',
    category: 'french'

  },
  {
    name:         'Rest 3',
    address:      'Address 3',
    phone_number:  '789',
    category: 'italian'

  },
    {
    name:         'Rest 4',
    address:      'Address 4',
    phone_number:  '101112',
    category: 'japanese'

  },
    {
    name:         'Rest 5',
    address:      'Address 5',
    phone_number:  '131415',
    category: 'belgian'

  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
