require "open-uri"

Article.destroy_all
User.destroy_all

puts 'creating'

user_1 = User.create!(first_name: "Paul", last_name: "TOTO", email: "joriss@gmail.com", password: "bobmùdkseeeeeekld")
user_2 = User.create!(first_name: "Michel", last_name: "TITI", email: "enola.l@gmail.com", password: "bobbyeeeezknq")
user_3 = User.create!(first_name: "Jacques", last_name: "TUTU", email: "alexandre.tumememetu@gmail.com",
                      password: "bobbbbyeeeeeeme")
address_1 = "17 rue saint Rémi Bordeaux"
address_2 = "15 rue du chai des farines Bordeaux"
address_3 = "75 Cours du Médoc Bordeaux"

file = URI.open("https://res.cloudinary.com/dpjincxmo/image/upload/v1692885246/development/JBL_Partybox_710__Lifestyle_01_905x560px_moy9sr.jpg")
article = Article.new(name: "Enceinte PartyBox JBL", description: "Enceinte JBL neuve, super pour toutes vos soirées avec son son déployé", price: 150, user: user_1, address: address_1)
article.photo.attach(io: file, filename: "enceinteJBL.png", content_type: "image/png")
article.save

file = URI.open("https://res.cloudinary.com/dpjincxmo/image/upload/v1692885246/development/table-ping-lifestyle-outdoor_zhynyp.jpg")
article = Article.new(name: "table de ping-pong", description: "une table de ping-pong ? A transfomer en table de bière pong ? Allez y elle a participé aux championnats du monde de bière pong a bordeaux ! Attention au filet il a un peu vécu, mais la table est pliante et pratique a transporter !", price: 400, user: user_2, address: address_2)
article.photo.attach(io: file, filename: "pinpongtable.png", content_type: "image/png")
article.save

file = URI.open("https://res.cloudinary.com/dpjincxmo/image/upload/v1692885246/development/regles-du-jeu-de-flechette_pnk296.jpg")
article = Article.new(name: "flechettes", description: "Super jeux facile a prendre en main, ne craint pas grand chose car le jeux viens a l'origin du dickens a bordeaux ! Qualitée testé et approuvée par les clients du bar mais aussi par mes amis et moi ! a tester sans modération ! ", price: 50, user: user_3, address: address_3)
article.photo.attach(io: file, filename: "flechettes.png", content_type: "image/png")
article.save

file = URI.open("https://res.cloudinary.com/dpjincxmo/image/upload/v1692885245/development/chateaux_margot_n1d0qp.jpg")
article = Article.new(name: "25 bouteilles de Chateau Margaux", description: "Superbes bouteilles de vin à deguster avec vos amis pour de belles soirées. Date : 1995", price: 150, user: user_1, address: address_1)
article.photo.attach(io: file, filename: "chateaumargeaux.png", content_type: "image/png")
article.save

file = URI.open("https://www.easylounge.com/Content/img/categories/image/ecrans-de-projection/ecran-projection-fixe.jpg")
article = Article.new(name: "Ecran de cinema", description: "Un ecran de cinema portatif pour un weekend de pluie ou de forte chaleur devant une bonne série ! ", price: 150, user: user_1, address: address_1)
article.photo.attach(io: file, filename: "enceinteJBL.png", content_type: "image/png")
article.save

file = URI.open("https://media.cnn.com/api/v1/images/stellar/prod/211115143331-marijuana-joint-stock.jpg?q=x_0,y_130,h_1406,w_2500,c_crop/h_720,w_1280")
article = Article.new(name: "Marie Jeanne", description: "Pour vos meilleurs gateaux de soirée, n'hésitez pas à me contacter. POur plus d'un kilo, merci de reserver au moins 1 semaine à l'avance !", price: 70, user: user_2, address: address_2)
article.photo.attach(io: file, filename: "MarieJeanne.png", content_type: "image/png")
article.save

file = URI.open("https://www.salondete.fr/img/photos/table-basse-lumineuse-led-120-cm-rectangulaire-hd.jpg")
article = Article.new(name: "table basse piscine", description: "Super jeux facile a prendre en main, ne craint pas grand chose car le jeux viens a l'origin du dickens a bordeaux ! Qualitée testé et approuvée par les clients du bar mais aussi par mes amis et moi ! a tester sans modération ! ", price: 50, user: user_3, address: address_3)
article.photo.attach(io: file, filename: "flechettes.png", content_type: "image/png")
article.save

file = URI.open("https://res.cloudinary.com/dpjincxmo/image/upload/v1692885245/development/chateaux_margot_n1d0qp.jpg")
article = Article.new(name: "25 bouteilles de Chateau Margaux", description: "Superbes bouteilles de vin à deguster avec vos amis pour de belles soirées. Date : 1995", price: 150, user: user_1, address: address_1)
article.photo.attach(io: file, filename: "chateaumargeaux.png", content_type: "image/png")
article.save

file = URI.open("https://res.cloudinary.com/dpjincxmo/image/upload/v1692885246/development/JBL_Partybox_710__Lifestyle_01_905x560px_moy9sr.jpg")
article = Article.new(name: "Enceinte PartyBox JBL", description: "Enceinte JBL neuve, super pour toutes vos soirées avec son son déployé", price: 150, user: user_1, address: address_1)
article.photo.attach(io: file, filename: "enceinteJBL.png", content_type: "image/png")
article.save

file = URI.open("https://res.cloudinary.com/dpjincxmo/image/upload/v1692885246/development/table-ping-lifestyle-outdoor_zhynyp.jpg")
article = Article.new(name: "table de ping-pong", description: "une table de ping-pong ? A transfomer en table de bière pong ? Allez y elle a participé aux championnats du monde de bière pong a bordeaux ! Attention au filet il a un peu vécu, mais la table est pliante et pratique a transporter !", price: 400, user: user_2, address: address_2)
article.photo.attach(io: file, filename: "pinpongtable.png", content_type: "image/png")
article.save

file = URI.open("https://res.cloudinary.com/dpjincxmo/image/upload/v1692885246/development/regles-du-jeu-de-flechette_pnk296.jpg")
article = Article.new(name: "flechettes", description: "Super jeux facile a prendre en main, ne craint pas grand chose car le jeux viens a l'origin du dickens a bordeaux ! Qualitée testé et approuvée par les clients du bar mais aussi par mes amis et moi ! a tester sans modération ! ", price: 50, user: user_3, address: address_3)
article.photo.attach(io: file, filename: "flechettes.png", content_type: "image/png")
article.save

file = URI.open("https://res.cloudinary.com/dpjincxmo/image/upload/v1692885245/development/chateaux_margot_n1d0qp.jpg")
article = Article.new(name: "25 bouteilles de Chateau Margaux", description: "Superbes bouteilles de vin à deguster avec vos amis pour de belles soirées. Date : 1995", price: 150, user: user_1, address: address_1)
article.photo.attach(io: file, filename: "chateaumargeaux.png", content_type: "image/png")
article.save

puts 'finished'
