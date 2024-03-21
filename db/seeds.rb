# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


SelectedHobby.destroy_all
Hobby.destroy_all
Chatroom.destroy_all
User.destroy_all
Event.destroy_all

puts "Seeding hobbies..."


file_literature = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1710922214/literature_tvpqad.png")
literature = Hobby.create!(name: "Literature")
literature.photo.attach(io: file_literature, filename: 'literature_tvpqad.png', content_type: 'image/jpg')

file_music = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1710884887/music_ffwjwc.png")
music = Hobby.create!(name: "Music")
music.photo.attach(io: file_music, filename: 'music_ffwjwc', content_type: 'image/jpg')

file_sports = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1710921810/sports_wc3njl.png")
sports = Hobby.create!(name: "Sports")
sports.photo.attach(io: file_sports, filename: 'sports_wc3njl.png', content_type: 'image/jpg')

file_theatre = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1710921886/theatre_lnlk69.png")
theatre = Hobby.create!(name: "Theatre")
theatre.photo.attach(io: file_theatre, filename: 'theatre_lnlk69.png', content_type: 'image/jpg')

file_movies = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1710923091/cinema_1_jd1oev.png")
movies = Hobby.create!(name: "Movies")
movies.photo.attach(io: file_movies, filename: 'cinema_1_jd1oev.png', content_type: 'image/jpg')

file_photography = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1710921614/la-photographie_syhrg9.png")
photography = Hobby.create!(name: "Photography")
photography.photo.attach(io: file_photography, filename: 'la-photographie_syhrg9.png', content_type: 'image/jpg')

file_comedy = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1710921274/comedy_hbyln3.png")
comedy = Hobby.create!(name: "Comedy")
comedy.photo.attach(io: file_comedy, filename: 'comedy_hbyln3.png', content_type: 'image/jpg')

file_boardgames = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1710921413/dice_nm6vq3.png")
boardgames = Hobby.create!(name: "Boardgames")
boardgames.photo.attach(io: file_boardgames, filename: 'dice_nm6vq3.png', content_type: 'image/jpg')

file_videogames = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1710922220/videogames_yxjtjf.png")
videogames = Hobby.create!(name: "Videogames")
videogames.photo.attach(io: file_videogames, filename: 'videogames_yxjtjf.png', content_type: 'image/jpg')

file_art = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1710920846/art-gallery_icnnmn.png")
art = Hobby.create!(name: "Art")
art.photo.attach(io: file_art, filename: 'art-gallery_icnnmn.png', content_type: 'image/jpg')

file_coding = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1710921183/coding_jbzusw.png")
coding = Hobby.create!(name: "Coding")
coding.photo.attach(io: file_coding, filename: 'coding_jbzusw.png', content_type: 'image/jpg')

file_crafts = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1710921494/handicraft_dx6zsm.png")
crafts = Hobby.create!(name: "Crafts")
crafts.photo.attach(io: file_crafts, filename: 'handicraft_dx6zsm.png', content_type: 'image/jpg')

file_dance = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1710920951/ballet_q9pqyn.png")
dance = Hobby.create!(name: "Dance")
dance.photo.attach(io: file_dance, filename: 'ballet_q9pqyn.png', content_type: 'image/jpg')

file_brewing = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1710921022/brewing_nemxm0.png")
brewing = Hobby.create!(name: "Brewing")
brewing.photo.attach(io: file_brewing, filename: 'brewing_nemxm0', content_type: 'image/jpg')

file_traveling = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1710921956/travelling_bycxdh.png")
traveling = Hobby.create!(name: "Traveling")
traveling.photo.attach(io: file_traveling, filename: 'travelling_bycxdh.png', content_type: 'image/jpg')

file_animals = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1710920745/animal-care_toqjxa.png")
animals = Hobby.create!(name: "Animals")
animals.photo.attach(io: file_animals, filename: 'animal-care_toqjxa.png', content_type: 'image/jpg')

file_food = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1710921557/healthy-heart_l598dz.png")
food = Hobby.create!(name: "Food")
food.photo.attach(io: file_food, filename: 'healthy-heart_l598dz.png', content_type: 'image/jpg')

file_party = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1710921349/dance_lbjwkm.png")
party = Hobby.create!(name: "Party")
party.photo.attach(io: file_party, filename: 'dance_lbjwkm.png', content_type: 'image/jpg')

file_nature = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1710921738/landscape_yhcr2r.png")
nature = Hobby.create!(name: "Nature")
nature.photo.attach(io: file_nature, filename: 'landscape_yhcr2r.png', content_type: 'image/jpg')

file_astronomy = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1711030017/astronomy_xeuaz4.png")
astronomy = Hobby.create!(name: "Astronomy")
astronomy.photo.attach(io: file_astronomy, filename: 'astronomy_xeuaz4.png', content_type: 'image/jpg')

file_spirituality = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1711030212/pray_mkwwyi.png")
spirituality = Hobby.create!(name: "Spirituality")
spirituality.photo.attach(io: file_spirituality, filename: 'pray_mkwwyi.png', content_type: 'image/jpg')

file_camping = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1711030384/tent_jtz4q1.png")
camping = Hobby.create!(name: "Camping")
camping.photo.attach(io: file_camping, filename: 'tent_jtz4q1.png', content_type: 'image/jpg')

file_hiking = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1711030533/hiking_h8xbuo.png")
hiking = Hobby.create!(name: "Hiking")
hiking.photo.attach(io: file_hiking, filename: 'hiking_h8xbuo.png', content_type: 'image/jpg')

file_painting = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1711030677/painting_tixchx.png")
painting = Hobby.create!(name: "Painting")
painting.photo.attach(io: file_painting, filename: 'painting_tixchx.png', content_type: 'image/jpg')

file_scuba = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1711030893/scuba-diving_l3pajf.png")
scuba = Hobby.create!(name: "Scuba Diving")
scuba.photo.attach(io: file_scuba, filename: 'scuba-diving_l3pajf.png', content_type: 'image/jpg')

file_surf = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1711031023/surfing_r2hn7n.png")
surf = Hobby.create!(name: "Surf")
surf.photo.attach(io: file_surf, filename: 'surfing_r2hn7n.png', content_type: 'image/jpg')

file_skating = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1711031220/ice-skating_trh7vd.png")
skating = Hobby.create!(name: "Ice Skating")
skating.photo.attach(io: file_skating, filename: 'ice-skating_trh7vd.png', content_type: 'image/jpg')

file_gardening = URI.open("https://res.cloudinary.com/dowj44v2p/image/upload/v1711031366/gardening_wuzdqp.png")
gardening = Hobby.create!(name: "Gardening")
gardening.photo.attach(io: file_gardening, filename: 'gardening_wuzdqp.png', content_type: 'image/jpg')


puts "Seeding hobbies completed"

puts "Seeding users..."

20.times do
  username = Faker::Name.first_name.downcase.gsub(/\W/, '')
  address = Faker::Address.city

  file_avatar = URI.open(Faker::Avatar.image)

  user = User.create!(
    username: username.capitalize,
    birthdate: Faker::Date.birthday(min_age: 18, max_age: 45),
    bio: "Hello, I am #{username.capitalize} from #{address.capitalize}! I would like to meet new friends who share my hobbies",
    email: "#{username}@gmail.com",
    password: "123456",
    location: address,
  )

  user.photo.attach(io: file_avatar, filename: "#{username}_avatar.jpg", content_type: 'image/jpg')
end

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

puts "Seeding users..."

User.all.each do |user|
  hobby_ids = Hobby.pluck(:id).sample(6).uniq

  hobby_ids.each do |hobby_id|
    SelectedHobby.create!(user_id: user.id, hobby_id: hobby_id)
  end
end


puts "Seeding selected-hobbies completed!"


puts "Seeding events..."

Event.create!(
  name:"Movie premiere",
  date:"20/04/2024",
  description:"A premiere of a really great movie! come and check it out!",
  location:"Dublin, Ireland",
  user_id:User.first.id,
  hobby_id:Hobby.first.id
)

Event.create!(
  name:"Knitting event",
  date:"20/04/2024",
  description:"A really fun knitting event, for people of all skills! Check it out!",
  location:"Seattle, USA",
  user_id:User.first.id,
  hobby_id:Hobby.first.id
)

Event.create!(
  name:"Broadway Play",
  date:"20/04/2024",
  description:"A fantastic musical-comedy for all ages. It's gonna be a hoot and holler!",
  location:"New York City, USA",
  user_id:User.last.id,
  hobby_id:Hobby.first.id
)

Event.create!(
  name:"Hike at Mt McKinley",
  date:"21/09/2024",
  description:"A hike at a very high mountain in Alaska-for more advanced hikers!",
  location:"Alaska, USA",
  user_id:User.first.id,
  hobby_id:Hobby.first.id
)

Event.create!(
  name:"Pub Crawl",
  date:"07/07/2024",
  description:"Go to the best pubs in the city, and drink your tits off with your friends!",
  location:"Birmingham, UK",
  user_id:User.last.id,
  hobby_id:Hobby.first.id
)

puts "Seeding events completed!"
