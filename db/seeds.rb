# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'creating'
user_1 = User.create!(first_name: "Paul", last_name: "TOTO", email: "p33@gmail.com", password: "bobmùdksjngekld")
user_2 = User.create!(first_name: "Michel", last_name: "TITI", email: "jichel.jdjd@gmail.com", password: "bobbylemzknq")
user_3 = User.create!(first_name: "Jacques", last_name: "TUTU", email: "jacques.tumememetu@gmail.com",
                      password: "bobbbbyme")

Article.create!(name: "enceinte", description: "bon état", price: 150, user: user_1)
Article.create!(name: "table de ping-pong", description: "bon état", price: 400, user: user_2)
Article.create!(name: "fléchettes", description: "bon état", price: 50, user: user_3)
puts 'finished'
