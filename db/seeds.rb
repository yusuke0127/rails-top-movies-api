# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'

path ='./movies.json'
movies = JSON.parse(File.read(path))
movies

movies.each do |movie|
  m = Movie.create!(
    title: movie['title'],
    cast: movie['cast'],
    director: movie['director'],
    storyline: movie['storyline'],
    year: movie['year'],
    genre: movie['genre'],
    rating: movie['rating']
  )
  p movie
  puts "Done creating #{m.title}"
end

puts "Done seeding"
