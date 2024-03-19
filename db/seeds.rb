# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Hobby.destroy_all
Chatroom.destroy_all
User.destroy_all

puts "Seeding hobbies..."

Hobby.create!(name: "Literature")
Hobby.create!(name: "Music")
Hobby.create!(name: "Sports")
Hobby.create!(name: "Theatre")
Hobby.create!(name: "Movies")
Hobby.create!(name: "Photography")
Hobby.create!(name: "Comedy")
Hobby.create!(name: "Boardgames")
Hobby.create!(name: "Videogames")
Hobby.create!(name: "Art")
Hobby.create!(name: "Coding")
Hobby.create!(name: "Crafts")
Hobby.create!(name: "Dance")
Hobby.create!(name: "Brewing")
Hobby.create!(name: "Traveling")
Hobby.create!(name: "Animals")
Hobby.create!(name: "Food")
Hobby.create!(name: "Party")
Hobby.create!(name: "Nature")

puts "Seeding hobbies completed"

puts "Seeding users..."

User.create!(
  username:"PeterP",
  birthdate: "12/12/1992",
  bio:"Hello I am Peter from somewhere, USA! What a world! Lordy lordy lord!",
  email:"peter@piper.com",
  password:"123456",
  location:"somewhere, USA"
)

User.create!(
  username:"LuisaA",
  birthdate: "30/05/2001",
  bio:"Hello I am Luisa from somewhere, Germany! What a world! Lordy lordy lord!",
  email:"luisa@luisa.com",
  password:"123456",
  location:"somewhere, Germany"
)

User.create!(
  username:"LauraZ",
  birthdate: "05/01/1994",
  bio:"Hello I am Laura from somewhere, England! What a world! Lordy lordy lord!",
  email:"laura@laura.com",
  password:"123456",
  location:"somewhere, England"
)

User.create!(
  username:"Barbara",
  birthdate: "08/08/1991",
  bio:"Hello I am Barbara from somewhere, France! What a world! Lordy lordy lord!",
  email:"barbara@barbara.com",
  password:"123456",
  location:"somewhere, France"
)

User.create!(
  username:"MattG",
  birthdate: "21/09/1985",
  bio:"Hello I am Matthew from somewhere, USA! What a world! Lordy lordy lord!",
  email:"matt@matt.com",
  password:"123456",
  location:"somewhere, USA"
)

puts "Seeding users completed!"
