# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    category:     "#{CATEGORIES.sample}",
    phone_number:  "0637712909"
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:  "#{CATEGORIES.sample}",
    phone_number:  '0632472912'
  },
  {
    name:         'Beerstro',
    address:      '62A rue du pont neuf ',
    category:  "#{CATEGORIES.sample}",
    phone_number:  '0632545552'
  },
  {
    name:         'bouillon du tarn',
    address:      'avenue laurent hitch ',
    category:  "#{CATEGORIES.sample}",
    phone_number:  '021585552'
  },
  {
    name:         'assiete creuse',
    address:      'rue des moche  ',
    category:  "#{CATEGORIES.sample}",
    phone_number:  '025441552'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
