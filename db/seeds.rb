require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all


user1 = User.create!(first_name:"axel", last_name:"test", email:"axel@gmail.fr", password:"123456", description:"coucou c moi", age:"25")
file = File.open("app/assets/images/cerisier2.jpg")
user1.photo.attach(io: file, filename: "cerisier2.jpg", content_type: 'image/png')
user1.save!
