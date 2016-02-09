# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Artist.create ([
  {name: "Toulouse-Lautrec", birth_date: Date.parse("1864-24-11")},
  {name: "Rembrandt", birth_date: Date.parse("1606-15-7")}
  ])
