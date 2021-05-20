require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ColocationGoal.destroy_all
UserPersonality.destroy_all
UserHobby.destroy_all
UserGoal.destroy_all
Offer.destroy_all
Colocation.destroy_all
User.destroy_all
Personality.destroy_all
Hobby.destroy_all
Goal.destroy_all




user1 = User.create!(first_name: "Marceline", last_name: "Dupont", email: "test@test.fr", password:"123456", description:"Hey ! J'adore l'aventure, toujours partante pour une bière, n'hésite pas me contacter !", birthday: Time.now - 18.year)
file = File.open("db/fixtures/images_profil/image.jpeg")
user1.photo.attach(io: file, filename: "image.jpeg", content_type: 'image/png')
user1.save!

user2 = User.create!(first_name: "Thomas", last_name: "Le Devendec", email: "thomas@example.fr" , password:"123456", description:"Salut, je viens d'arriver sur Rennes partant pour découvrir la vie étudiante !", birthday: Time.now - 22.year)
file = File.open("db/fixtures/images_profil/image1.jpeg")
user2.photo.attach(io: file, filename: "image1.jpeg", content_type: 'image/png')
user2.save!

user3 = User.create!(first_name: "Clothilde", last_name: "Maurer", email: "clotax@example.fr", password:"123456", description:"Bonsoir à tous ! amateur de tunning, Johnny dans mon coeur R.I.P ", birthday: Time.now - 19.year)
file = File.open("db/fixtures/images_profil/image2.jpeg")
user3.photo.attach(io: file, filename: "image2.jpeg", content_type: 'image/png')
user3.save!

user4 = User.create!(first_name: "Simon", last_name: "Lecoffre" , email: "simon@example.fr", password:"123456", description:"Hola, fraîchement arrivé de Colombie, faites moi découvrir la French Life!", birthday: Time.now - 22.year)
file = File.open("db/fixtures/images_profil/image3.jpeg")
user4.photo.attach(io: file, filename: "image3.jpeg", content_type: 'image/png')
user4.save!

user5 = User.create!(first_name: "Jerôme", last_name: "Trombetta" , email: "jerôme@example.fr", password:"123456", description:"Un Normand venu faire la fiesta en Bretagne !", birthday: Time.now - 17.year)
file = File.open("db/fixtures/images_profil/image4.jpeg")
user5.photo.attach(io: file, filename: "image4.jpeg", content_type: 'image/png')
user5.save!

user6 = User.create!(first_name: "Damien", last_name: "Ménages", email: "damien@example.fr", password:"123456", description:"Pur produit du Sud, j'arrive imposé la farniente dans ta coloc!", birthday: Time.now - 22.year)
file = File.open("db/fixtures/images_profil/image5.jpeg")
user6.photo.attach(io: file, filename: "image5.jpeg", content_type: 'image/png')
user6.save!

user7 = User.create!(first_name: "Axel", last_name: "Ridray", email: "axel@example.fr", password:"123456", description:"Hey ! Retour dans ma Bretagne natale pour finir mes études je cherche une coloc sérieuse", birthday: Time.now - 22.year)
file = File.open("db/fixtures/images_profil/image6.jpeg")
user7.photo.attach(io: file, filename: "image6.jpeg", content_type: 'image/png')
user7.save!

user8 = User.create!(first_name: "Lomig" , last_name: "Guillaume", email: "Lomig@example.fr", password:"123456", description:"Hello, à la recherche de nouvelles expériences, la vie en communauté me tente donc let's go!", birthday: Time.now - 20.year)
file = File.open("db/fixtures/images_profil/image7.jpeg")
user8.photo.attach(io: file, filename: "image7.jpeg", content_type: 'image/png')
user8.save!

user9 = User.create!(first_name: "Hugo", last_name: "Daniel", email: "hugo@example.fr", password:"123456", description:"Hey, je suis paradoxale à la fois sportif et fêtard, si tu veux de l'ambiance prend moi dans ta team", birthday: Time.now - 22.year)
file = File.open("db/fixtures/images_profil/image8.jpeg")
user9.photo.attach(io: file, filename: "image8.jpeg", content_type: 'image/png')
user9.save!

user10 = User.create!(first_name: "Jjax", last_name: "Benoit", email: "jjax@example.fr", password:"123456", description:"Bonjour à tous, je fais une entré fraccasssante dans ta coloc comme un obèse qui fait une bombe dans une piscine", birthday: Time.now - 22.year)
file = File.open("db/fixtures/images_profil/image20.jpeg")
user10.photo.attach(io: file, filename: "image20.jpeg", content_type: 'image/png')
user10.save!

user11 = User.create!(first_name: "Pierre", last_name: "Facq", email: "pierre@example.fr", password:"123456", description:"Bonsoir a tous ! amateur de tunning, Johnny dans mon coeur R.I.P ", birthday: Time.now - 22.year)
file = File.open("db/fixtures/images_profil/image14.jpeg")
user11.photo.attach(io: file, filename: "image14.jpeg", content_type: 'image/png')
user11.save!

user12 = User.create!(first_name: "Clémentine", last_name: "David", email: "martin@example.fr", password:"123456", description:"Hey, je suis paradoxale à la fois sportif et fêtard, si tu veux de l'ambiance prend moi dans ta team", birthday: Time.now - 22.year)
file = File.open("db/fixtures/images_profil/image10.jpeg")
user12.photo.attach(io: file, filename: "image10.jpeg", content_type: 'image/png')
user12.save!

user13 = User.create!(first_name: "Cécile", last_name: "DeFrance", email: "cécile@example.fr", password:"123456", description: "Hello, à la recherche de nouvelles expériences, la vie en communauté me tente donc let's go!", birthday: Time.now - 22.year)
file = File.open("db/fixtures/images_profil/image11.jpeg")
user13.photo.attach(io: file, filename: "image11.jpeg", content_type: 'image/png')
user13.save!

user14 = User.create!(first_name: "Titou", last_name: "Lefauconier", email: "titax@example.fr", password:"123456", description: "Bonsoir à tous, fraîchement arrivé de Normandie venu retourner la Bretagne, n'hésite pas à me contacter", birthday: Time.now - 23.year)
file = File.open("db/fixtures/images_profil/image17.jpeg")
user14.photo.attach(io: file, filename: "image17.jpeg", content_type: 'image/png')
user14.save!

user15 = User.create!(first_name: "Marine", last_name: "DesChateau", email: "marine@example.fr", password:"123456", description: "Hello, venu découvrir la Bretagne en espérant que la légende sur votre alcoolisme est fondé ;)", birthday: Time.now - 22.year)
file = File.open("db/fixtures/images_profil/image12.jpeg")
user15.photo.attach(io: file, filename: "image12.jpeg", content_type: 'image/png')
user15.save!

user16 = User.create!(first_name: "Manon", last_name: "Gaillard", email: "manon@example.fr", password:"123456", description: "Hi, fraîchement arrivé des US, faites moi découvrir la French Life!", birthday: Time.now - 24.year)
file = File.open("db/fixtures/images_profil/image13.jpeg")
user16.photo.attach(io: file, filename: "image13.jpeg", content_type: 'image/png')
user16.save!

user17 = User.create!(first_name: "Leo", last_name: "Criquet", email: "léo@example.fr", password:"123456", description: "Hey, ton futur barman préféré ;)", birthday: Time.now - 21.year)
file = File.open("db/fixtures/images_profil/image18.jpeg")
user17.photo.attach(io: file, filename: "image18.jpeg", content_type: 'image/png')
user17.save!

user18 = User.create!(first_name: "Marie", last_name: "Cottebrune", email: "marie@example.fr", password:"123456", description: "Salut, je viens d'arriver sur Rennes partante pour découvrir la vie étudiante !", birthday: Time.now - 22.year)
file = File.open("db/fixtures/images_profil/image16.jpeg")
user18.photo.attach(io: file, filename: "image16.jpeg", content_type: 'image/png')
user18.save!

user19 = User.create!(first_name: "Flossie", last_name: "Dusclos", email: "flossie@example.fr", password:"123456", description: "Hey, Parisienne venu observer les provinciaux", birthday: Time.now - 22.year)
file = File.open("db/fixtures/images_profil/image15.jpeg")
user19.photo.attach(io: file, filename: "image15.jpeg", content_type: 'image/png')
user19.save!

user20 = User.create!(first_name: "Alexandre", last_name: "Teyant", email: "alex@example.fr", password:"123456", description: "Hey, je viens d'arrivée sur Rennes et je recherche une petite colocation des familles, histoire de passer de bons moments :)", birthday: Time.now - 20.year)
file = File.open("db/fixtures/images_profil/image19.jpeg")
user20.photo.attach(io: file, filename: "image19.jpeg", content_type: 'image/png')
user20.save!


colocation1 = Colocation.create!(phone_number: "0634582258", title: "La Chouille House", address:"1 Place de la République, 35000 Rennes", description: "En plein centre ville de Rennes, on aime la nuit et la vie ! ;) Si tu es un bon vivant alors tu es le bienvenu !!", price: 275, desired_people: 6, user: user1)
file1 = File.open("db/fixtures/images_coloc/n.chambre1.jpeg")
colocation1.photos.attach(io: file1, filename: "n.chambre1.jpeg", content_type: 'image/png')
file2 = File.open("db/fixtures/images_coloc/n.cuisine1.jpeg")
colocation1.photos.attach(io: file2, filename: "n.cuisine1.jpeg", content_type: 'image/png')
file3 = File.open("db/fixtures/images_coloc/n.salledebain.jpeg")
colocation1.photos.attach(io: file3, filename: "n.salledebain.jpeg", content_type: 'image/png')
colocation1.save!

colocation2 = Colocation.create!(phone_number: "0634582258", title: "Koh Lanta", address:"1 Place Sainte-Anne, 35000 Rennes", description: "En plein centre de l'effervescence Rennaise! Si l'imprévu est ton fil conducteur viens avec nous chef!", price: 415, desired_people: 4, user: user5)
file1 = File.open("db/fixtures/images_coloc/n.chambre2.jpeg")
colocation2.photos.attach(io: file1, filename: "n.chambre2.jpg", content_type: 'image/png')
file2 = File.open("db/fixtures/images_coloc/n.cuisine2.jpeg")
colocation2.photos.attach(io: file2, filename: "n.cuisine2.jpg", content_type: 'image/png')
file3 = File.open("db/fixtures/images_coloc/salon1.jpeg")
colocation2.photos.attach(io: file3, filename: "salon1.jpg", content_type: 'image/png')
colocation2.save!

colocation3 = Colocation.create!(phone_number: "0634582258", title: "Chill House", address:"10 Place de la République, 69002 Lyon", description: "Bien situé, dans un environnement qui pousse au travail ! Si tu es déterminé, et sérieux nous t'accepterons avec plaisir.", price: 750, desired_people: 6, user: user6)
file1 = File.open("db/fixtures/images_coloc/chambre3.jpeg")
colocation3.photos.attach(io: file1, filename: "chambre3.jpg", content_type: 'image/png')
file2 = File.open("db/fixtures/images_coloc/cuisine3.jpeg")
colocation3.photos.attach(io: file2, filename: "cuisine3.jpg", content_type: 'image/png')
file3 = File.open("db/fixtures/images_coloc/salon3.jpeg")
colocation3.photos.attach(io: file3, filename: "salon3.jpg", content_type: 'image/png')
colocation3.save!


colocation4 = Colocation.create!(phone_number: "0634582258", title: "L'ESL Breton", address:"17 Cours du Président John Fitzgerald Kennedy, 35000 Rennes", description: "Si t'aime taper des grosses LAN entre potes, cette coloc est faite pour toi !", price: 375, desired_people: 5, user: user9)
file1 = File.open("db/fixtures/images_coloc/n.chambre3.jpeg")
colocation4.photos.attach(io: file1, filename: "n.chambre3.jpg", content_type: 'image/png')
file2 = File.open("db/fixtures/images_coloc/n.cuisine3.jpeg")
colocation4.photos.attach(io: file2, filename: "n.cuisine3.jpg", content_type: 'image/png')
file3 = File.open("db/fixtures/images_coloc/n.salledebain3.jpeg")
colocation4.photos.attach(io: file3, filename: "n.salledebain3.jpg", content_type: 'image/png')
colocation4.save!

colocation5 = Colocation.create!(phone_number: "0634582258", title: "La Geuleton House", address:"20 Rue de Gadagne, 69002 Lyon", description: "Si t'aime les copains et la bonne bouffe, c'est ici qu'il faut que tu sois!", price: 675, desired_people: 6, user: user11)
file1 = File.open("db/fixtures/images_coloc/chambre5.jpeg")
colocation5.photos.attach(io: file1, filename: "chambre5.jpg", content_type: 'image/png')
file2 = File.open("db/fixtures/images_coloc/cuisine5.jpeg")
colocation5.photos.attach(io: file2, filename: "cuisine5.jpg", content_type: 'image/png')
file3 = File.open("db/fixtures/images_coloc/salon5.jpeg")
colocation5.photos.attach(io: file3, filename: "salon5.jpg", content_type: 'image/png')
colocation5.save!


colocation6 = Colocation.create!(phone_number: "0634582258", title: "La Club House", address:"11 Rue Saint-Georges, 69002 Lyon", description: "Les boîtes te manquent, leur ambiance aussi, durant cette période agaçante nous te proposons une colocation énergique, qui te fera oublier l'existence du mot ennuie", price: 310, desired_people: 4, user: user15)
file1 = File.open("db/fixtures/images_coloc/chambre6.jpeg")
colocation6.photos.attach(io: file1, filename: "chambre6.jpg", content_type: 'image/png')
file2 = File.open("db/fixtures/images_coloc/cuisine6.jpeg")
colocation6.photos.attach(io: file2, filename: "cuisine6.jpg", content_type: 'image/png')
file3 = File.open("db/fixtures/images_coloc/salon6.jpeg")
colocation6.photos.attach(io: file3, filename: "salon6.jpg", content_type: 'image/png')
colocation6.save!


colocation7 = Colocation.create!(phone_number: "0634582258", title: "Tokyo House", address:"11 Rue Denuzière, 69002 Lyon", description: "Si la culture japonaise fait partie de toi, tu seras ici chez toi", price: 260, desired_people: 5, user: user17)
file1 = File.open("db/fixtures/images_coloc/chambre7.jpeg")
colocation7.photos.attach(io: file1, filename: "chambre7.jpg", content_type: 'image/png')
file2 = File.open("db/fixtures/images_coloc/cuisine7.jpeg")
colocation7.photos.attach(io: file2, filename: "cuisine7.jpg", content_type: 'image/png')
file3 = File.open("db/fixtures/images_coloc/salon7.jpeg")
colocation7.photos.attach(io: file3, filename: "salon7.jpg", content_type: 'image/png')
colocation7.save!


colocation8 = Colocation.create!(phone_number: "0634582258", title: "Au bout du Monde", address:"11 Rue de Léon, 35000 Rennes", description: "Colocation suspendue dans le temps et l'espace, si tu veux venir te ressourcer tu es le bienvenue !", price: 225, desired_people: 4, user: user13)
file1 = File.open("db/fixtures/images_coloc/n.chambre6.jpeg")
colocation8.photos.attach(io: file1, filename: "n.chambre6.jpg", content_type: 'image/png')
file2 = File.open("db/fixtures/images_coloc/n.cuisine6.jpeg")
colocation8.photos.attach(io: file2, filename: "n.cuisine6.jpg", content_type: 'image/png')
file3 = File.open("db/fixtures/images_coloc/n.salon6.jpeg")
colocation8.photos.attach(io: file3, filename: "n.salon6.jpg", content_type: 'image/png')
colocation8.save!

colocation9 = Colocation.create!(phone_number: "0634582258", title: "La Lyonnaise", address:"25 Rue Victor Hugo, 69002 Lyon", description: "Si tu veux faire la fête, ramènes-toi direct !", price: 450, desired_people: 6, user: user18)
file1 = File.open("db/fixtures/images_coloc/chambre9.jpeg")
colocation9.photos.attach(io: file1, filename: "chambre9.jpg", content_type: 'image/png')
file2 = File.open("db/fixtures/images_coloc/cuisine9.jpeg")
colocation9.photos.attach(io: file2, filename: "cuisine9.jpg", content_type: 'image/png')
file3 = File.open("db/fixtures/images_coloc/salon9.jpeg")
colocation9.photos.attach(io: file3, filename: "salon9.jpg", content_type: 'image/png')
colocation9.save!


colocation10 = Colocation.create!(phone_number: "0634582258", title: "La Rennaise", address:"15 Place du Bas des Lices, 35000 Rennes", description: "Pour tous ceux qui veulent réussir leurs études", price: 250, desired_people: 6, user: user2)
file1 = File.open("db/fixtures/images_coloc/chambre10.jpeg")
colocation10.photos.attach(io: file1, filename: "chambre10.jpg", content_type: 'image/png')
file2 = File.open("db/fixtures/images_coloc/cuisine10.jpeg")
colocation10.photos.attach(io: file2, filename: "cuisine10.jpg", content_type: 'image/png')
file3 = File.open("db/fixtures/images_coloc/salon10.jpeg")
colocation10.photos.attach(io: file3, filename: "salon10.jpg", content_type: 'image/png')
colocation10.save!

colocation11 = Colocation.create!(phone_number: "0634582258", title: "L'Idéale", address:"20 Place du Parlement de Bretagne, 35000 Rennes", description: "Le doux mélange entre fêtes et études, bref la coloc' parfaite !", price: 250, desired_people: 6, user: user1)
file1 = File.open("db/fixtures/images_coloc/chambre11.jpeg")
colocation11.photos.attach(io: file1, filename: "chambre11.jpg", content_type: 'image/png')
file2 = File.open("db/fixtures/images_coloc/cuisine11.jpeg")
colocation11.photos.attach(io: file2, filename: "cuisine11.jpg", content_type: 'image/png')
file3 = File.open("db/fixtures/images_coloc/salon11.jpeg")
colocation11.photos.attach(io: file3, filename: "salon11.jpg", content_type: 'image/png')
colocation11.save!


offer1 = Offer.create!(user: user1, colocation: colocation1, status: "acceptée !")
offer2 = Offer.create!(user: user2, colocation: colocation1, status: "acceptée !")


offer4 = Offer.create!(user: user4, colocation: colocation2, status: "acceptée !")
offer5 = Offer.create!(user: user5, colocation: colocation2, status: "acceptée !")


offer7 = Offer.create!(user: user6, colocation: colocation3, status: "acceptée !")
offer8 = Offer.create!(user: user3, colocation: colocation3, status: "déclinée !")

offer9 = Offer.create!(user: user9, colocation: colocation4, status: "acceptée !")


offer11 = Offer.create!(user: user11, colocation: colocation5, status: "acceptée !")


offer13 = Offer.create!(user: user15, colocation: colocation6, status: "acceptée !")


offer15 = Offer.create!(user: user17, colocation: colocation7, status: "acceptée !")
offer16 = Offer.create!(user: user12, colocation: colocation7, status: "acceptée !")

offer17 = Offer.create!(user: user13, colocation: colocation8, status: "acceptée !")


offer19 = Offer.create!(user: user18, colocation: colocation9, status: "acceptée !")
offer20 = Offer.create!(user: user20, colocation: colocation9, status: "acceptée !")

offer21 = Offer.create!(user: user1, colocation: colocation11, status: "acceptée !")
offer22 = Offer.create!(user: user4, colocation: colocation11, status: "acceptée !")
offer23 = Offer.create!(user: user5, colocation: colocation11, status: "acceptée !")


offer24 = Offer.create!(user: user2, colocation: colocation10, status: "acceptée !")
offer25 = Offer.create!(user: user7, colocation: colocation10, status: "acceptée !")
offer26 = Offer.create!(user: user8, colocation: colocation10, status: "acceptée !")


personality1 = Personality.create!(icon: "🏠", name: "Casanière")
personality2 = Personality.create!(icon: "🤠", name: "Aventurière")
personality3 = Personality.create!(icon: "🎓", name: "Studieuse")
personality4 = Personality.create!(icon: "🥳", name: "Fêtarde")
personality5 = Personality.create!(icon: "🤡", name: "Extravertie")
personality6 = Personality.create!(icon: "👉👈", name: "Introvertie")


hobby1 = Hobby.create!(icon: "📽️", name: "Cinéphile")
hobby2 = Hobby.create!(icon: "🎶", name: "Musicien")
hobby3 = Hobby.create!(icon: "🏆", name: "Sportif")
hobby4 = Hobby.create!(icon: "👩‍🍳", name: "Gastronome")
hobby5 = Hobby.create!(icon: "🕹️", name: "Gamer")
hobby6 = Hobby.create!(icon: "📚", name: "Littéraire")


goal1 = Goal.create!(icon: "🙅", name: "Antisociale")
goal2 = Goal.create!(icon: "🙋", name: "Hypersociable")
goal3 = Goal.create!(icon: "🐕", name: "Animaux")
goal4 = Goal.create!(icon: "🎶", name: "Musicale")
goal5 = Goal.create!(icon: "📡", name: "Haut débit")
goal6 = Goal.create!(icon: "🌎", name: "Multiculturelle")
goal7 = Goal.create!(icon: "👨‍🎓", name: "Étudiante")



user_personalities1 = UserPersonality.create!(user: user1, personality: personality2)
user_personalities2 = UserPersonality.create!(user: user1, personality: personality4)
user_personalities3 = UserPersonality.create!(user: user1, personality: personality5)

user_personalities4 = UserPersonality.create!(user: user2, personality: personality1)
user_personalities5 = UserPersonality.create!(user: user2, personality: personality3)
user_personalities6 = UserPersonality.create!(user: user2, personality: personality5)


user_personalities7 = UserPersonality.create!(user: user3, personality: personality2)
user_personalities8 = UserPersonality.create!(user: user3, personality: personality3)
user_personalities9 = UserPersonality.create!(user: user3, personality: personality6)

user_personalities10 = UserPersonality.create!(user: user4, personality: personality2)
user_personalities11 = UserPersonality.create!(user: user4, personality: personality3)
user_personalities12 = UserPersonality.create!(user: user4, personality: personality5)

user_personalities13 = UserPersonality.create!(user: user5, personality: personality3)
user_personalities14 = UserPersonality.create!(user: user5, personality: personality4)
user_personalities15 = UserPersonality.create!(user: user5, personality: personality5)

user_personalities16 = UserPersonality.create!(user: user6, personality: personality1)
user_personalities17 = UserPersonality.create!(user: user6, personality: personality3)
user_personalities18 = UserPersonality.create!(user: user6, personality: personality5)

user_personalities19 = UserPersonality.create!(user: user7, personality: personality1)
user_personalities20 = UserPersonality.create!(user: user7, personality: personality3)
user_personalities21 = UserPersonality.create!(user: user7, personality: personality5)

user_personalities22 = UserPersonality.create!(user: user8, personality: personality1)
user_personalities23 = UserPersonality.create!(user: user8, personality: personality3)
user_personalities24 = UserPersonality.create!(user: user8, personality: personality6)

user_personalities25 = UserPersonality.create!(user: user9, personality: personality2)
user_personalities26 = UserPersonality.create!(user: user9, personality: personality3)
user_personalities27 = UserPersonality.create!(user: user9, personality: personality6)

user_personalities28 = UserPersonality.create!(user: user10, personality: personality2)
user_personalities29 = UserPersonality.create!(user: user10, personality: personality3)
user_personalities30 = UserPersonality.create!(user: user10, personality: personality5)

user_personalities31 = UserPersonality.create!(user: user11, personality: personality1)
user_personalities32 = UserPersonality.create!(user: user11, personality: personality3)
user_personalities33 = UserPersonality.create!(user: user11, personality: personality6)

user_personalities34 = UserPersonality.create!(user: user12, personality: personality2)
user_personalities35 = UserPersonality.create!(user: user12, personality: personality4)
user_personalities36 = UserPersonality.create!(user: user12, personality: personality6)

user_personalities37 = UserPersonality.create!(user: user13, personality: personality1)
user_personalities38 = UserPersonality.create!(user: user13, personality: personality4)
user_personalities39 = UserPersonality.create!(user: user13, personality: personality6)

user_personalities40 = UserPersonality.create!(user: user14, personality: personality2)
user_personalities41 = UserPersonality.create!(user: user14, personality: personality4)
user_personalities42 = UserPersonality.create!(user: user14, personality: personality6)

user_personalities43 = UserPersonality.create!(user: user15, personality: personality2)
user_personalities44 = UserPersonality.create!(user: user15, personality: personality3)
user_personalities45 = UserPersonality.create!(user: user15, personality: personality6)

user_personalities46 = UserPersonality.create!(user: user16, personality: personality2)
user_personalities47 = UserPersonality.create!(user: user16, personality: personality4)
user_personalities48 = UserPersonality.create!(user: user16, personality: personality5)

user_personalities49 = UserPersonality.create!(user: user17, personality: personality1)
user_personalities50 = UserPersonality.create!(user: user17, personality: personality3)
user_personalities51 = UserPersonality.create!(user: user17, personality: personality5)

user_personalities52 = UserPersonality.create!(user: user18, personality: personality1)
user_personalities53 = UserPersonality.create!(user: user18, personality: personality3)
user_personalities54 = UserPersonality.create!(user: user18, personality: personality6)

user_personalities55 = UserPersonality.create!(user: user19, personality: personality1)
user_personalities56 = UserPersonality.create!(user: user19, personality: personality3)
user_personalities57 = UserPersonality.create!(user: user19, personality: personality6)

user_personalities58 = UserPersonality.create!(user: user20, personality: personality2)
user_personalities59 = UserPersonality.create!(user: user20, personality: personality4)
user_personalities60 = UserPersonality.create!(user: user20, personality: personality5)



user_hobbies1 = UserHobby.create!(user: user1, hobby: hobby5)
user_hobbies2 = UserHobby.create!(user: user1, hobby: hobby1)

user_hobbies1 = UserHobby.create!(user: user2, hobby: hobby6)
user_hobbies2 = UserHobby.create!(user: user2, hobby: hobby3)
user_hobbies3 = UserHobby.create!(user: user2, hobby: hobby4)
user_hobbies4 = UserHobby.create!(user: user2, hobby: hobby2)

user_hobbies1 = UserHobby.create!(user: user3, hobby: hobby1)
user_hobbies2 = UserHobby.create!(user: user3, hobby: hobby2)
user_hobbies3 = UserHobby.create!(user: user3, hobby: hobby5)

user_hobbies1 = UserHobby.create!(user: user4, hobby: hobby1)
user_hobbies2 = UserHobby.create!(user: user4, hobby: hobby3)
user_hobbies3 = UserHobby.create!(user: user4, hobby: hobby5)


user_hobbies1 = UserHobby.create!(user: user5, hobby: hobby6)
user_hobbies2 = UserHobby.create!(user: user5, hobby: hobby2)
user_hobbies3 = UserHobby.create!(user: user5, hobby: hobby3)

user_hobbies1 = UserHobby.create!(user: user6, hobby: hobby1)
user_hobbies2 = UserHobby.create!(user: user6, hobby: hobby2)
user_hobbies3 = UserHobby.create!(user: user6, hobby: hobby4)

user_hobbies1 = UserHobby.create!(user: user7, hobby: hobby6)
user_hobbies2 = UserHobby.create!(user: user7, hobby: hobby3)


user_hobbies1 = UserHobby.create!(user: user8, hobby: hobby6)
user_hobbies2 = UserHobby.create!(user: user8, hobby: hobby3)
user_hobbies3 = UserHobby.create!(user: user8, hobby: hobby4)

user_hobbies1 = UserHobby.create!(user: user9, hobby: hobby1)
user_hobbies2 = UserHobby.create!(user: user9, hobby: hobby2)
user_hobbies3 = UserHobby.create!(user: user9, hobby: hobby5)

user_hobbies1 = UserHobby.create!(user: user10, hobby: hobby1)
user_hobbies2 = UserHobby.create!(user: user10, hobby: hobby2)
user_hobbies3 = UserHobby.create!(user: user10, hobby: hobby4)

user_hobbies1 = UserHobby.create!(user: user11, hobby: hobby1)
user_hobbies2 = UserHobby.create!(user: user11, hobby: hobby2)
user_hobbies3 = UserHobby.create!(user: user11, hobby: hobby6)

user_hobbies1 = UserHobby.create!(user: user12, hobby: hobby1)
user_hobbies2 = UserHobby.create!(user: user12, hobby: hobby3)
user_hobbies3 = UserHobby.create!(user: user12, hobby: hobby6)

user_hobbies1 = UserHobby.create!(user: user13, hobby: hobby1)
user_hobbies2 = UserHobby.create!(user: user13, hobby: hobby2)
user_hobbies3 = UserHobby.create!(user: user13, hobby: hobby4)

user_hobbies1 = UserHobby.create!(user: user14, hobby: hobby1)
user_hobbies2 = UserHobby.create!(user: user14, hobby: hobby5)
user_hobbies3 = UserHobby.create!(user: user14, hobby: hobby6)

user_hobbies1 = UserHobby.create!(user: user15, hobby: hobby2)
user_hobbies2 = UserHobby.create!(user: user15, hobby: hobby3)
user_hobbies3 = UserHobby.create!(user: user15, hobby: hobby5)

user_hobbies1 = UserHobby.create!(user: user16, hobby: hobby1)
user_hobbies2 = UserHobby.create!(user: user16, hobby: hobby3)
user_hobbies3 = UserHobby.create!(user: user16, hobby: hobby4)

user_hobbies1 = UserHobby.create!(user: user17, hobby: hobby1)
user_hobbies2 = UserHobby.create!(user: user17, hobby: hobby3)
user_hobbies3 = UserHobby.create!(user: user17, hobby: hobby6)

user_hobbies1 = UserHobby.create!(user: user18, hobby: hobby1)
user_hobbies2 = UserHobby.create!(user: user18, hobby: hobby3)
user_hobbies3 = UserHobby.create!(user: user18, hobby: hobby5)

user_hobbies1 = UserHobby.create!(user: user19, hobby: hobby1)
user_hobbies2 = UserHobby.create!(user: user19, hobby: hobby3)
user_hobbies3 = UserHobby.create!(user: user19, hobby: hobby4)

user_hobbies1 = UserHobby.create!(user: user20, hobby: hobby1)
user_hobbies2 = UserHobby.create!(user: user20, hobby: hobby4)
user_hobbies3 = UserHobby.create!(user: user20, hobby: hobby5)



user_goals1 = UserGoal.create!(user: user1, goal: goal2)
user_goals2 = UserGoal.create!(user: user1, goal: goal7)
user_goals3 = UserGoal.create!(user: user1, goal: goal4)

user_goals4 = UserGoal.create!(user: user2, goal: goal7)
user_goals5 = UserGoal.create!(user: user2, goal: goal3)
user_goals6 = UserGoal.create!(user: user2, goal: goal6)

user_goals7 = UserGoal.create!(user: user3, goal: goal2)
user_goals8 = UserGoal.create!(user: user3, goal: goal5)
user_goals9 = UserGoal.create!(user: user3, goal: goal6)

user_goals11 = UserGoal.create!(user: user4, goal: goal6)
user_goals12 = UserGoal.create!(user: user4, goal: goal4)

user_goals13 = UserGoal.create!(user: user5, goal: goal5)
user_goals14 = UserGoal.create!(user: user5, goal: goal6)
user_goals15 = UserGoal.create!(user: user5, goal: goal4)
user_goals15 = UserGoal.create!(user: user5, goal: goal7)

user_goals16 = UserGoal.create!(user: user6, goal: goal1)
user_goals17 = UserGoal.create!(user: user6, goal: goal3)
user_goals18 = UserGoal.create!(user: user6, goal: goal6)

user_goals19 = UserGoal.create!(user: user7, goal: goal7)
user_goals20 = UserGoal.create!(user: user7, goal: goal4)
user_goals21 = UserGoal.create!(user: user7, goal: goal3)

user_goals22 = UserGoal.create!(user: user8, goal: goal7)
user_goals23 = UserGoal.create!(user: user8, goal: goal6)
user_goals24 = UserGoal.create!(user: user8, goal: goal4)
user_goals25 = UserGoal.create!(user: user8, goal: goal1)

user_goals25 = UserGoal.create!(user: user9, goal: goal2)
user_goals26 = UserGoal.create!(user: user9, goal: goal5)
user_goals27 = UserGoal.create!(user: user9, goal: goal4)

user_goals28 = UserGoal.create!(user: user10, goal: goal1)
user_goals29 = UserGoal.create!(user: user10, goal: goal5)
user_goals30 = UserGoal.create!(user: user10, goal: goal3)

user_goals31 = UserGoal.create!(user: user11, goal: goal2)
user_goals32 = UserGoal.create!(user: user11, goal: goal3)
user_goals33 = UserGoal.create!(user: user11, goal: goal4)

user_goals34 = UserGoal.create!(user: user12, goal: goal1)
user_goals35 = UserGoal.create!(user: user12, goal: goal4)
user_goals36 = UserGoal.create!(user: user12, goal: goal6)

user_goals37 = UserGoal.create!(user: user13, goal: goal2)
user_goals38 = UserGoal.create!(user: user13, goal: goal5)
user_goals39 = UserGoal.create!(user: user13, goal: goal3)

user_goals40 = UserGoal.create!(user: user14, goal: goal1)
user_goals41 = UserGoal.create!(user: user14, goal: goal3)
user_goals42 = UserGoal.create!(user: user14, goal: goal4)

user_goals43 = UserGoal.create!(user: user15, goal: goal1)
user_goals44 = UserGoal.create!(user: user15, goal: goal4)
user_goals45 = UserGoal.create!(user: user15, goal: goal3)

user_goals46 = UserGoal.create!(user: user16, goal: goal3)
user_goals47 = UserGoal.create!(user: user16, goal: goal6)
user_goals48 = UserGoal.create!(user: user16, goal: goal4)

user_goals49 = UserGoal.create!(user: user17, goal: goal2)
user_goals50 = UserGoal.create!(user: user17, goal: goal6)
user_goals51 = UserGoal.create!(user: user17, goal: goal3)

user_goals52 = UserGoal.create!(user: user18, goal: goal3)
user_goals53 = UserGoal.create!(user: user18, goal: goal6)
user_goals54 = UserGoal.create!(user: user18, goal: goal1)

user_goals55 = UserGoal.create!(user: user19, goal: goal2)
user_goals56 = UserGoal.create!(user: user19, goal: goal5)
user_goals57 = UserGoal.create!(user: user19, goal: goal4)

user_goals58 = UserGoal.create!(user: user20, goal: goal2)
user_goals59 = UserGoal.create!(user: user20, goal: goal4)
user_goals60 = UserGoal.create!(user: user20, goal: goal6)



colocation_goals = ColocationGoal.create!(colocation: colocation1, goal: goal2)
colocation_goals = ColocationGoal.create!(colocation: colocation1, goal: goal5)
colocation_goals = ColocationGoal.create!(colocation: colocation1, goal: goal6)

colocation_goals = ColocationGoal.create!(colocation: colocation2, goal: goal2)
colocation_goals = ColocationGoal.create!(colocation: colocation2, goal: goal3)
colocation_goals = ColocationGoal.create!(colocation: colocation2, goal: goal7)

colocation_goals = ColocationGoal.create!(colocation: colocation3, goal: goal1)
colocation_goals = ColocationGoal.create!(colocation: colocation3, goal: goal3)
colocation_goals = ColocationGoal.create!(colocation: colocation3, goal: goal5)

colocation_goals = ColocationGoal.create!(colocation: colocation4, goal: goal2)
colocation_goals = ColocationGoal.create!(colocation: colocation4, goal: goal7)
colocation_goals = ColocationGoal.create!(colocation: colocation4, goal: goal4)

colocation_goals = ColocationGoal.create!(colocation: colocation5, goal: goal1)
colocation_goals = ColocationGoal.create!(colocation: colocation5, goal: goal5)
colocation_goals = ColocationGoal.create!(colocation: colocation5, goal: goal3)

colocation_goals = ColocationGoal.create!(colocation: colocation6, goal: goal2)
colocation_goals = ColocationGoal.create!(colocation: colocation6, goal: goal3)
colocation_goals = ColocationGoal.create!(colocation: colocation6, goal: goal1)

colocation_goals = ColocationGoal.create!(colocation: colocation7, goal: goal1)
colocation_goals = ColocationGoal.create!(colocation: colocation7, goal: goal3)
colocation_goals = ColocationGoal.create!(colocation: colocation7, goal: goal6)

colocation_goals = ColocationGoal.create!(colocation: colocation8, goal: goal2)
colocation_goals = ColocationGoal.create!(colocation: colocation8, goal: goal5)
colocation_goals = ColocationGoal.create!(colocation: colocation8, goal: goal6)

colocation_goals = ColocationGoal.create!(colocation: colocation9, goal: goal2)
colocation_goals = ColocationGoal.create!(colocation: colocation9, goal: goal4)
colocation_goals = ColocationGoal.create!(colocation: colocation9, goal: goal6)
colocation_goals = ColocationGoal.create!(colocation: colocation9, goal: goal7)


colocation_goals = ColocationGoal.create!(colocation: colocation10, goal: goal2)
colocation_goals = ColocationGoal.create!(colocation: colocation10, goal: goal4)
colocation_goals = ColocationGoal.create!(colocation: colocation10, goal: goal6)
colocation_goals = ColocationGoal.create!(colocation: colocation10, goal: goal7)
colocation_goals = ColocationGoal.create!(colocation: colocation10, goal: goal3)

colocation_goals = ColocationGoal.create!(colocation: colocation11, goal: goal2)
colocation_goals = ColocationGoal.create!(colocation: colocation11, goal: goal4)
colocation_goals = ColocationGoal.create!(colocation: colocation11, goal: goal6)
colocation_goals = ColocationGoal.create!(colocation: colocation11, goal: goal7)
