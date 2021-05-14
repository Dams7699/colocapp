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




user1 = User.create!(first_name: "test", last_name: "test", email: "test@test.fr", password:"123456", description:"Hey ! J'adore l'aventure, toujours partant pour une bière, hésite pas me contacter! ", age:"25")
file = File.open("app/assets/images/images_profil/image.jpeg")
user1.photo.attach(io: file, filename: "image.jpeg", content_type: 'image/png')
user1.save!

user2 = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password:"123456", description:"Salut, je viens d'arriver sur Rennes partante pour découvrir la vie étudiante !", age:"18")
file = File.open("app/assets/images/images_profil/image1.jpeg")
user2.photo.attach(io: file, filename: "image1.jpeg", content_type: 'image/png')
user2.save!

user3 = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password:"123456", description:"Bonsoir a tous ! amateur de tunning, Johnny dans mon coeur R.I.P ", age:"28")
file = File.open("app/assets/images/images_profil/image2.jpeg")
user3.photo.attach(io: file, filename: "image2.jpeg", content_type: 'image/png')
user3.save!

user4 = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password:"123456", description:"Hola, fraîchement arrivé de colombie, faites moi découvrir la FrenchLife!", age:"22")
file = File.open("app/assets/images/images_profil/image3.jpeg")
user4.photo.attach(io: file, filename: "image3.jpeg", content_type: 'image/png')
user4.save!

user5 = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password:"123456", description:"Un Normand venu foutre le zbeul en Bretagne !", age:"21")
file = File.open("app/assets/images/images_profil/image4.jpeg")
user5.photo.attach(io: file, filename: "image4.jpeg", content_type: 'image/png')
user5.save!

user6 = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password:"123456", description:"Pur produit du Sud, j'arrive imposé la farniente dans ta coloc!", age:"27")
file = File.open("app/assets/images/images_profil/image5.jpeg")
user6.photo.attach(io: file, filename: "image5.jpeg", content_type: 'image/png')
user6.save!

user7 = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password:"123456", description:"Hey ! Retour dans ma bretagne natale après 5 ans de voyage, si tu veux des soirées chill en partagent nos expériences fais moi signe!", age:"26")
file = File.open("app/assets/images/images_profil/image6.jpeg")
user7.photo.attach(io: file, filename: "image6.jpeg", content_type: 'image/png')
user7.save!

user8 = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password:"123456", description:"Hello, à la recherche de nouvelles expériences, la vie en communauté me tente donc let's go!", age:"29")
file = File.open("app/assets/images/images_profil/image7.jpeg")
user8.photo.attach(io: file, filename: "image7.jpeg", content_type: 'image/png')
user8.save!

user9 = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password:"123456", description:"Hey, je suis paradoxale a l foi sportif et fêtard, si tu veux de l'ambiance prend moi dans ta team", age:"25")
file = File.open("app/assets/images/images_profil/image8.jpeg")
user9.photo.attach(io: file, filename: "image8.jpeg", content_type: 'image/png')
user9.save!

user10 = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password:"123456", description:"Bonjour à tous, je fais une entré fraccasssante dans ta coloc comme un obèse qui fait une bombe dans une piscine", age:"25")
file = File.open("app/assets/images/images_profil/image9.jpeg")
user10.photo.attach(io: file, filename: "image9.jpeg", content_type: 'image/png')
user10.save!


colocation1 = Colocation.create!(title: "La chouille house", address:"1 Place de la République, 35000 Rennes", description: "En plein centre ville de Rennes, ont aiment la nuit et la vie ! ;) Si tu es un bon vivant alors tu es le bienvenu!!", price: 450, desired_people: 1, user: user1)
file1 = File.open("app/assets/images/images_coloc/chambre1.jpeg")
colocation1.photos.attach(io: file1, filename: "chambre1.jpeg", content_type: 'image/png')
file2 = File.open("app/assets/images/images_coloc/cuisine1.jpeg")
colocation1.photos.attach(io: file2, filename: "cuisine1.jpeg", content_type: 'image/png')
file3 = File.open("app/assets/images/images_coloc/salon1.jpeg")
colocation1.photos.attach(io: file3, filename: "salon1.jpeg", content_type: 'image/png')
colocation1.save!

colocation2 = Colocation.create!(title: "Koh Lanta", address:"1 Place Sainte-Anne, 35000 Rennes", description: "En plein centre de l'effervescence Rennaise! Si l'imprévu est t'on fil conducteur viens avec nous chef!", price: 475, desired_people: 1, user: user5)
file1 = File.open("app/assets/images/images_coloc/chambre2.jpeg")
colocation2.photos.attach(io: file1, filename: "chambre2.jpg", content_type: 'image/png')
file2 = File.open("app/assets/images/images_coloc/cuisine2.jpeg")
colocation2.photos.attach(io: file2, filename: "cuisine2.jpg", content_type: 'image/png')
file3 = File.open("app/assets/images/images_coloc/salon2.jpeg")
colocation2.photos.attach(io: file3, filename: "salon2.jpg", content_type: 'image/png')
colocation2.save!

colocation3 = Colocation.create!(title: "Chill House", address:"10 Place du Parlment de Bretagne, 35000 Rennes", description: "Bien situé, dans un environnement qui pousse au travail ! Si tu es déterminé, et sérieux nous t'accepterons avec plaisir", price: 415, desired_people: 1, user: user6)
file1 = File.open("app/assets/images/images_coloc/chambre3.jpeg")
colocation3.photos.attach(io: file1, filename: "chambre3.jpg", content_type: 'image/png')
file2 = File.open("app/assets/images/images_coloc/cuisine3.jpeg")
colocation3.photos.attach(io: file2, filename: "cuisine3.jpg", content_type: 'image/png')
file3 = File.open("app/assets/images/images_coloc/salon3.jpeg")
colocation3.photos.attach(io: file3, filename: "salon3.jpg", content_type: 'image/png')
colocation3.save!

colocation4 = Colocation.create!(title: "L'ESL Breton", address:"17 Cours du Président John Fitzgerald Kennedy, 35000 Rennes", description: "Si t'aime taper des grosses LAN entre potes, cette coloc est faite pour toi !", price: 375, desired_people: 1, user: user9)
file1 = File.open("app/assets/images/images_coloc/chambre4.jpeg")
colocation4.photos.attach(io: file1, filename: "chambre4.jpg", content_type: 'image/png')
file2 = File.open("app/assets/images/images_coloc/cuisine4.jpeg")
colocation4.photos.attach(io: file2, filename: "cuisine4.jpg", content_type: 'image/png')
file3 = File.open("app/assets/images/images_coloc/salon4.jpeg")
colocation4.photos.attach(io: file3, filename: "salon4.jpg", content_type: 'image/png')
colocation4.save!


offer1 = Offer.create!(user: user1, colocation: colocation1, status: "Accepté!")
offer2 = Offer.create!(user: user2, colocation: colocation1, status: "Accepté!")
offer3 = Offer.create!(user: user7, colocation: colocation1, status: "En attente..")


offer4 = Offer.create!(user: user4, colocation: colocation2, status: "Accepté!")
offer5 = Offer.create!(user: user5, colocation: colocation2, status: "Accepté!")
offer6 = Offer.create!(user: user10, colocation: colocation2, status: "En attente..")

offer7 = Offer.create!(user: user6, colocation: colocation3, status: "Accepté!")
offer8 = Offer.create!(user: user3, colocation: colocation3, status: "Décliné!")

offer9 = Offer.create!(user: user9, colocation: colocation4, status: "Accepté!")
offer10 = Offer.create!(user: user8, colocation: colocation4, status: "En attente..")


personality1 = Personality.create!(icon: "🏠", name: "casanier")
personality2 = Personality.create!(icon: "🤠", name: "aventurier")
personality3 = Personality.create!(icon: "🎓", name: "studieux")
personality4 = Personality.create!(icon: "🥳", name: "fêtard")
personality5 = Personality.create!(icon: "🤡", name: "extravertit")
personality6 = Personality.create!(icon: "👉👈", name: "introvertit")


hobby1 = Hobby.create!(icon: "📽️", name: "cinéphile")
hobby2 = Hobby.create!(icon: "🎶", name: "musicien")
hobby3 = Hobby.create!(icon: "🏆", name: "sportif")
hobby4 = Hobby.create!(icon: "👩‍🍳", name: "gastronome")
hobby5 = Hobby.create!(icon: "🕹️", name: "gamer")


goal1 = Goal.create!(icon: "🙅", name: "antisocial")
goal2 = Goal.create!(icon: "🙋", name: "hypersociable")
goal3 = Goal.create!(icon: "🔊", name: "techno")
goal4 = Goal.create!(icon: "🎤", name: "rap")
goal5 = Goal.create!(icon: "🎸", name: "rock")
goal6 = Goal.create!(icon: "🌎", name: "plusieurs langues")


user_personalities1 = UserPersonality.create!(user: user1, personality: personality2)
user_personalities2 = UserPersonality.create!(user: user1, personality: personality4)
user_personalities3 = UserPersonality.create!(user: user1, personality: personality5)

user_personalities4 = UserPersonality.create!(user: user2, personality: personality1)
user_personalities5 = UserPersonality.create!(user: user2, personality: personality4)
user_personalities6 = UserPersonality.create!(user: user2, personality: personality6)

user_personalities7 = UserPersonality.create!(user: user3, personality: personality2)
user_personalities8 = UserPersonality.create!(user: user3, personality: personality3)
user_personalities9 = UserPersonality.create!(user: user3, personality: personality6)

user_personalities10 = UserPersonality.create!(user: user4, personality: personality2)
user_personalities11 = UserPersonality.create!(user: user4, personality: personality3)
user_personalities12 = UserPersonality.create!(user: user4, personality: personality6)

user_personalities13 = UserPersonality.create!(user: user5, personality: personality1)
user_personalities14 = UserPersonality.create!(user: user5, personality: personality3)
user_personalities15 = UserPersonality.create!(user: user5, personality: personality5)

user_personalities16 = UserPersonality.create!(user: user6, personality: personality1)
user_personalities17 = UserPersonality.create!(user: user6, personality: personality3)
user_personalities18 = UserPersonality.create!(user: user6, personality: personality5)

user_personalities19 = UserPersonality.create!(user: user7, personality: personality2)
user_personalities20 = UserPersonality.create!(user: user7, personality: personality4)
user_personalities21 = UserPersonality.create!(user: user7, personality: personality5)

user_personalities22 = UserPersonality.create!(user: user8, personality: personality1)
user_personalities23= UserPersonality.create!(user: user8, personality: personality4)
user_personalities24 = UserPersonality.create!(user: user8, personality: personality5)

user_personalities25 = UserPersonality.create!(user: user9, personality: personality2)
user_personalities26 = UserPersonality.create!(user: user9, personality: personality3)
user_personalities27 = UserPersonality.create!(user: user9, personality: personality6)

user_personalities28 = UserPersonality.create!(user: user10, personality: personality2)
user_personalities29 = UserPersonality.create!(user: user10, personality: personality3)
user_personalities30 = UserPersonality.create!(user: user10, personality: personality5)


user_hobbies1 = UserHobby.create!(user: user1, hobby: hobby2)
user_hobbies2 = UserHobby.create!(user: user1, hobby: hobby4)
user_hobbies3 = UserHobby.create!(user: user1, hobby: hobby5)

user_hobbies1 = UserHobby.create!(user: user2, hobby: hobby1)
user_hobbies2 = UserHobby.create!(user: user2, hobby: hobby3)
user_hobbies3 = UserHobby.create!(user: user2, hobby: hobby4)

user_hobbies1 = UserHobby.create!(user: user3, hobby: hobby1)
user_hobbies2 = UserHobby.create!(user: user3, hobby: hobby2)
user_hobbies3 = UserHobby.create!(user: user3, hobby: hobby5)

user_hobbies1 = UserHobby.create!(user: user4, hobby: hobby2)
user_hobbies2 = UserHobby.create!(user: user4, hobby: hobby3)
user_hobbies3 = UserHobby.create!(user: user4, hobby: hobby5)

user_hobbies1 = UserHobby.create!(user: user5, hobby: hobby1)
user_hobbies2 = UserHobby.create!(user: user5, hobby: hobby2)
user_hobbies3 = UserHobby.create!(user: user5, hobby: hobby4)

user_hobbies1 = UserHobby.create!(user: user6, hobby: hobby1)
user_hobbies2 = UserHobby.create!(user: user6, hobby: hobby2)
user_hobbies3 = UserHobby.create!(user: user6, hobby: hobby4)

user_hobbies1 = UserHobby.create!(user: user7, hobby: hobby1)
user_hobbies2 = UserHobby.create!(user: user7, hobby: hobby3)
user_hobbies3 = UserHobby.create!(user: user7, hobby: hobby5)

user_hobbies1 = UserHobby.create!(user: user8, hobby: hobby2)
user_hobbies2 = UserHobby.create!(user: user8, hobby: hobby3)
user_hobbies3 = UserHobby.create!(user: user8, hobby: hobby5)

user_hobbies1 = UserHobby.create!(user: user9, hobby: hobby1)
user_hobbies2 = UserHobby.create!(user: user9, hobby: hobby2)
user_hobbies3 = UserHobby.create!(user: user9, hobby: hobby5)

user_hobbies1 = UserHobby.create!(user: user10, hobby: hobby1)
user_hobbies2 = UserHobby.create!(user: user10, hobby: hobby2)
user_hobbies3 = UserHobby.create!(user: user10, hobby: hobby4)


user_goals1 = UserGoal.create!(user: user1, goal: goal2)
user_goals2 = UserGoal.create!(user: user1, goal: goal3)

user_goals3 = UserGoal.create!(user: user2, goal: goal1)
user_goals4 = UserGoal.create!(user: user2, goal: goal4)

user_goals5 = UserGoal.create!(user: user3, goal: goal2)
user_goals6 = UserGoal.create!(user: user3, goal: goal5)

user_goals7 = UserGoal.create!(user: user4, goal: goal1)
user_goals8 = UserGoal.create!(user: user4, goal: goal3)

user_goals9 = UserGoal.create!(user: user5, goal: goal1)
user_goals10 = UserGoal.create!(user: user5, goal: goal6)

user_goals11 = UserGoal.create!(user: user6, goal: goal3)
user_goals12 = UserGoal.create!(user: user6, goal: goal6)

user_goals13 = UserGoal.create!(user: user7, goal: goal2)
user_goals14 = UserGoal.create!(user: user7, goal: goal6)

user_goals15 = UserGoal.create!(user: user8, goal: goal3)
user_goals16 = UserGoal.create!(user: user8, goal: goal6)

user_goals17= UserGoal.create!(user: user9, goal: goal2)
user_goals18 = UserGoal.create!(user: user9, goal: goal5)

user_goals19 = UserGoal.create!(user: user10, goal: goal1)
user_goals20 = UserGoal.create!(user: user10, goal: goal5)


colocation_goals1 = ColocationGoal.create!(colocation: colocation1, goal: goal2)
colocation_goals1 = ColocationGoal.create!(colocation: colocation1, goal: goal5)

colocation_goals1 = ColocationGoal.create!(colocation: colocation2, goal: goal2)
colocation_goals1 = ColocationGoal.create!(colocation: colocation2, goal: goal6)

colocation_goals1 = ColocationGoal.create!(colocation: colocation3, goal: goal1)
colocation_goals1 = ColocationGoal.create!(colocation: colocation3, goal: goal3)

colocation_goals1 = ColocationGoal.create!(colocation: colocation4, goal: goal2)
colocation_goals1 = ColocationGoal.create!(colocation: colocation4, goal: goal4)






