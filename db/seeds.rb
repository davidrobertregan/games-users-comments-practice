# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Game.destroy_all
Comment.destroy_all

puts "creating users"
users = User.create([{name: "David"}, {name: "Ian"}, {name: "JP"}])

puts "creating games"
10.times do |i|
    Game.create(name: Faker::Game.title, genre: Faker::Game.genre)
end

puts "creating comments"
50.times do |i| 
    Comment.create(content: Faker::Quote.most_interesting_man_in_the_world, game: Game.all.sample, user: User.all.sample)
end