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
    category:     'japanese',
    phone_number: '03 45 67 78 90'
  },
  {
    name:         'Pizza East',
    address:      '90A Shoreditch High St, London E1 6PQ',
    category:     'italian',
    phone_number: '03 45 67 78 90'
  },
  {
    name:         'Le buchon',
    address:      '1096C Shoreditch High St, London E1 6PQ',
    category:     'french',
    phone_number: '03 45 67 78 90'
  },
  {
    name:         'La Bonne Raclette',
    address:      '346B Shoreditch High St, London E1 6PQ',
    category:     'chinese',
    phone_number: '03 45 67 78 90'
  },
  {
    name:         'La Pizza qui ne viendra pas',
    address:      '32P Shoreditch High St, London E1 6PQ',
    category:     'belgian',
    phone_number: '03 45 67 78 90'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
