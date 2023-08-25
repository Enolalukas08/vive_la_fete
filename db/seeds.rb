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
address_4 = "34 rue Chapon Paris"
address_5 = "66 rue Sadi Carnot Ligny"
address_6 = "1 route de Léognan Villenave d'Ornon"

# 1
file = URI.open("https://res.cloudinary.com/dpjincxmo/image/upload/v1692885246/development/JBL_Partybox_710__Lifestyle_01_905x560px_moy9sr.jpg")
article = Article.new(name: "Enceinte PartyBox JBL", description: "Enceinte JBL neuve, super pour toutes vos soirées avec son son déployé", price: 13, user: user_1, address: address_1)
article.photo.attach(io: file, filename: "enceinteJBL.png", content_type: "image/png")
article.save

file = URI.open("https://res.cloudinary.com/dpjincxmo/image/upload/v1692885246/development/table-ping-lifestyle-outdoor_zhynyp.jpg")
article = Article.new(name: "table de ping-pong", description: "une table de ping-pong ? A transfomer en table de bière pong ? Allez y elle a participé aux championnats du monde de bière pong a bordeaux ! Attention au filet il a un peu vécu, mais la table est pliante et pratique a transporter !", price: 42, user: user_2, address: address_2)
article.photo.attach(io: file, filename: "pinpongtable.png", content_type: "image/png")
article.save

file = URI.open("https://res.cloudinary.com/dpjincxmo/image/upload/v1692885246/development/regles-du-jeu-de-flechette_pnk296.jpg")
article = Article.new(name: "flechettes", description: "Super jeux facile a prendre en main, ne craint pas grand chose car le jeux viens a l'origin du dickens a bordeaux ! Qualitée testé et approuvée par les clients du bar mais aussi par mes amis et moi ! a tester sans modération ! ", price: 50, user: user_3, address: address_3)
article.photo.attach(io: file, filename: "flechettes.png", content_type: "image/png")
article.save

file = URI.open("https://res.cloudinary.com/dpjincxmo/image/upload/v1692885245/development/chateaux_margot_n1d0qp.jpg")
article = Article.new(name: "Chateau Margaux", description: "Superbes bouteilles de vin à deguster avec vos amis pour de belles soirées. Date : 1995", price: 8, user: user_1, address: address_4)
article.photo.attach(io: file, filename: "chateaumargeaux.png", content_type: "image/png")
article.save

file = URI.open("https://www.easylounge.com/Content/img/categories/image/ecrans-de-projection/ecran-projection-fixe.jpg")
article = Article.new(name: "Ecran de cinema", description: "Un ecran de cinema portatif pour un weekend de pluie ou de forte chaleur devant une bonne série ! ", price: 10, user: user_1, address: address_5)
article.photo.attach(io: file, filename: "enceinteJBL.png", content_type: "image/png")
article.save

file = URI.open("https://media.cnn.com/api/v1/images/stellar/prod/211115143331-marijuana-joint-stock.jpg?q=x_0,y_130,h_1406,w_2500,c_crop/h_720,w_1280")
article = Article.new(name: "Marie Jeanne", description: "Pour vos meilleurs gateaux de soirée, n'hésitez pas à me contacter. POur plus d'un kilo, merci de reserver au moins 1 semaine à l'avance !", price: 70, user: user_2, address: address_6)
article.photo.attach(io: file, filename: "MarieJeanne.png", content_type: "image/png")
article.save

# file = URI.open("https://meilleurtest.fr/wp-content/uploads/2022/08/comparatif-enceinte-bluetooth-lumineuse.jpg")
# article = Article.new(name: "Enceinte Lumineuse", description: "Apportez de l'ambiance à votre soirée avec cette enceinte Bluetooth dotée de lumières LED synchronisées avec la musique. Créez une atmosphère festive où que vous soyez.", price: 70, user: user_1, address: address_1)
# article.photo.attach(io: file, filename: "enceintelumineuse.png", content_type: "image/png")
# article.save

file = URI.open("https://www.laboutiqueducocktail.com/wp-content/uploads/2023/05/Kit-Cocktail-Premium-350ml-800x800.jpg")
article = Article.new(name: "Kit de Cocktails", description: "Élevez votre soirée avec ce kit de cocktails artisanaux comprenant des ingrédients haut de gamme et des recettes uniques. Impressionnez vos invités en devenant un mixologue expert !!!", price: 20, user: user_2, address: address_2)
article.photo.attach(io: file, filename: "pinpongtable.png", content_type: "image/png")
article.save

file = URI.open("https://www.bons-plans-malins.com/wp-content/uploads/2017/07/veilleuse-ciel-d%E2%80%99etoiles-pas-chere.gif")
article = Article.new(name: "Projecteur d'Étoiles", description: "Transformez votre espace en un ciel étoilé en utilisant ce projecteur. Parfait pour une soirée relaxante ou pour ajouter une touche de magie à votre événement. Qualitée testé et approuvée par mes enfants et moi ! a tester sans modération ! ", price: 5, user: user_3, address: address_6)
article.photo.attach(io: file, filename: "flechettes.png", content_type: "image/png")
article.save

file = URI.open("https://s.alicdn.com/@sc04/kf/H10678f87b45541df8bdfd9607ebca8e1i.jpg_280x280.jpg")
article = Article.new(name: "Machine à Fumée", description: "Donnez une dimension spectaculaire à votre soirée avec cette machine à fumée qui crée des effets visuels époustouflants grâce à ses LEDs colorées. Idéal pour les soirées dansantes.", price: 150, user: user_1, address: address_5)
article.photo.attach(io: file, filename: "chateaumargeaux.png", content_type: "image/png")
article.save

file = URI.open("https://wholewood.fr/10541-large_default/coffret-9-jeux-de-societe-bois-philos.jpg")
article = Article.new(name: "Jeux de Société", description: "Garantissez des heures de divertissement avec une sélection de jeux de société interactifs. Des rires et des défis attendent vos invités lors de cette soirée mémorable.", price: 2, user: user_1, address: address_5)
article.photo.attach(io: file, filename: "chateaumargeaux.png", content_type: "image/png")
article.save

# 3--- MODIFICATIONS
file = URI.open("https://www.filsantejeunes.com/wp-content/uploads/2022/09/Chicha.jpg")
article = Article.new(name: "Bar à Chicha", description: "Bar à Chicha Élégant : Offrez à vos invités une expérience unique avec un bar à chicha élégamment présenté. Proposez une variété de saveurs pour créer une ambiance détendue et sophistiquée.", price: 70, user: user_1, address: address_1)
article.photo.attach(io: file, filename: "enceintelumineuse.png", content_type: "image/png")
article.save

file = URI.open("https://d25bw6vpcxy1uk.cloudfront.net/media/image/36/3b/30/diy-best-day-fotorahmen-1dM1vdMrQYMuXe_600x600@2x.webp")
article = Article.new(name: "Thèmes pour Photo", description: "Mettez en place des coins photo avec différents thèmes amusants. Fournissez des accessoires et des arrière-plans pour que vos invités puissent capturer des souvenirs uniques. Transformez votre espace en un ciel étoilé en utilisant ce projecteur. Parfait pour une soirée relaxante ou pour ajouter une touche de magie à votre événement. Qualitée testé et approuvée par mes enfants et moi ! a tester sans modération ! ", price: 5, user: user_2, address: address_3)
article.photo.attach(io: file, filename: "flechettes.png", content_type: "image/png")
article.save

file = URI.open("https://www.gilbertholl.com/wp-content/uploads/2021/04/45445-310-chef-1245676_640.jpg")
article = Article.new(name: "Service Traiteur", description: "Réjouissez les papilles de vos convives avec un service de traiteur proposant des mets gastronomiques. Des délices exquis pour une soirée des plus délicieuses.", price: 50, user: user_1, address: address_5)
article.photo.attach(io: file, filename: "chateaumargeaux.png", content_type: "image/png")
article.save

file = URI.open("https://www.numerama.com/wp-content/uploads/2023/02/bot-ai.jpg")
article = Article.new(name: "DJ Virtuel Personnalisé", description: "Plus besoin d'engagez un DJ. Utilisez ce DJ virtuel qui jouera la musique parfaite pour votre soirée, en personnalisant la playlist selon vos préférences et celles de vos invités. ATTENTION, il faut un compte spotify pour l'utiliser", price: 2, user: user_1, address: address_5)
article.photo.attach(io: file, filename: "chateaumargeaux.png", content_type: "image/png")
article.save

puts 'finished'
