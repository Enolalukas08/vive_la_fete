# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Article.destroy_all
User.destroy_all
puts 'creating'
user_1 = User.create!(first_name: "Paul", last_name: "TOTO", email: "joriss@gmail.com", password: "bobmùdkseeeeeekld")
user_2 = User.create!(first_name: "Michel", last_name: "TITI", email: "enola.d@gmail.com", password: "bobbyeeeezknq")
user_3 = User.create!(first_name: "Jacques", last_name: "TUTU", email: "alexandre.tumememetu@gmail.com",
                      password: "bobbbbyeeeeeeme")
address_1 =  "17 rue saint Rémi Bordeaux"
address_2 =  "15 rue du chai des farines Bordeaux"
address_3 = "75 Cours du Médoc Bordeaux"

Article.create!(name: "enceinte", description: "Encdinte JBL neuve, surer l", price: 150, user: user_1, address: address_1)
Article.create!(name: "table de ping-pong", description: "une table de ping-pong ? A transfomer en table de bière pong ? Allez y elle a participé aux championnats du monde de bière pong a bordeaux ! Attention au filet il a un peu vécu, mais la table est pliante et pratique a transporter !", price: 400, user: user_2, address: address_2)
Article.create!(name: "fléchettes", description: "Super jeux facile a prendre en main, ne craint pas grand chose car le jeux viens a l'origin du dickens a bordeaux ! Qualitée testé et approuvée par les clients du bar mais aussi par mes amis et moi ! a tester sans modération ! ", price: 50, user: user_3, address: address_3)
puts 'finished'
