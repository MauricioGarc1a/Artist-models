# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
toulose = Artist.create ({ name: "Toulouse-Lautrec", birth_date:Date.parse("1864-24-11"), }),
rembrandt = Artist.create ({ name: "Rembrandt", birth_date:Date.parse("1606-15-7"), },

Genre.destroy_all
Genre.create ([
  { name: "Illustration"},
  { name: "Painting"},
  ])

Art.destroy_all
Art.create ([
  { title: "Baroque", plot: "Is often thought of as a period of artistic style that used
  exaggerated motion and clear, easily interpreted detail to produce drama, tension ans exuberance",
  picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Rembrandt_Christ_in_the_Storm_on_the_Lake_of_Galilee.jpg/1280px-Rembrandt_Christ_in_the_Storm_on_the_Lake_of_Galilee.jpg",
  duration: 15, }
  { title: "Post-Impressionism", plot: "Emerged as a reaction against Impressionists’ concern for the naturalistic depiction of light and colour.",
  picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Henri_de_Toulouse-Lautrec_017.jpg/1280px-Henri_de_Toulouse-Lautrec_017.jpg",
  duration: 20, }
  ])
