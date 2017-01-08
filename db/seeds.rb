# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Country.create([
  { name: 'France' },
  { name: 'Italy' },
  { name: 'Portugal' },
  { name: 'Spain' }
])

Tag.create([
  { name: 'sun' },
  { name: 'fun' },
  { name: 'food' }
])

Country.first.tag_ids = [1,2,3]
Country.all[1].tag_ids = [1,2]
Country.all[2].tag_ids = [1,3]
Country.all[3].tag_ids = [3]
