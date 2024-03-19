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
