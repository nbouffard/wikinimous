# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning the database....'

Article.destroy_all

puts 'seeding the database....'

10.times do
  Article.create!(title: Faker::Movie.title, content: Faker::Quote.yoda)
end

puts 'Finished!'
