# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
toulose = Artist.create ({ name: "Toulouse-Lautrec", birth_date:Date.parse("1864-24-11"), }),
rembrandt = Artist.create ({ name: "Rembrandt", birth_date:Date.parse("1606-15-7"), }),

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
  duration: 15, },
  { title: "Post-Impressionism", plot: "Emerged as a reaction against Impressionists’ concern for the naturalistic depiction of light and colour.",
  picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Henri_de_Toulouse-Lautrec_017.jpg/1280px-Henri_de_Toulouse-Lautrec_017.jpg",
  duration: 20, },
  ])

Work.destroy_all
Work.create ([
  { title: "Self-portrait in the crowd", plot: "At the Moulin Rouge", picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Henri_de_Toulouse-Lautrec_-_At_the_Moulin_Rouge_-_Google_Art_Project.jpg/1920px-Henri_de_Toulouse-Lautrec_-_At_the_Moulin_Rouge_-_Google_Art_Project.jpg",
  realease_date: Date.parse("1892"), artist: Artist.where(name:"Toulouse-Lautrec"), },
  { title: "Woman at the Tub", plot: "From the Portfolio Elles ", picture: "https://upload.wikimedia.org/wikipedia/commons/0/01/Brooklyn_Museum_-_Woman_at_the_Tub_from_the_Portfolio_Elles_%28Femme_au_Tub_%29_-_Henri_de_Toulouse-Lautrec.jpg",
  realease_date: Date.parse("1896"), artist: Artist.where(name:"Toulouse-Lautrec"), },
  { title: "Rembrandt's son Titus", plot: "As a monk", picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Rembrandt_Harmensz._van_Rijn_103.jpg/1280px-Rembrandt_Harmensz._van_Rijn_103.jpg",
  realease_date: Date.parse("1660"), artist: Artist.where(name:"Rembrandt"), },
  { title: "The Abduction of Europa", plot: "A shining example of the 'golden age of Baroque painting", picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Rembrandt_Harmensz._van_Rijn_-_The_Abduction_of_Europa_-_Google_Art_Project.jpg/1920px-Rembrandt_Harmensz._van_Rijn_-_The_Abduction_of_Europa_-_Google_Art_Project.jpg",
  realease_date: Date.parse("1632"), artist: Artist.where(name:"Rembrandt"), },
  ])
