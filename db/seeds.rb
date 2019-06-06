if Rails.env.development?
  puts "deleting database"
  Offer.destroy_all
  User.destroy_all
end

puts "creating users"

user1 = User.create!(
  name: "Walter White",
  password: "123456",
  email: "user1@gmail.com",
  portfolio: Portfolio.new(
    description: "Nice garden in Laranjeiras",
    remote_photo_url: 'https://www.culturepartnership.eu/upload/news/58f7bc042bbfc.png'
  )
)

user2 = User.create!(
  name: "Angus MacGyver",
  password: "123456",
  email: "user2@gmail.com",
  portfolio: Portfolio.new(
    description: 'Total reform of a beach house',
    remote_photo_url: 'https://odis.homeaway.com/odis/listing/0ddf690b-1f02-43d9-b238-00ee3c484bc3.c10.jpg'
  )
)

user3 = User.create!(
  name: "Mario Bross",
  password: "123456",
  email: "user3@gmail.com",
  portfolio: Portfolio.new(
    description: 'House construction',
    remote_photo_url: 'https://s-ec.bstatic.com/images/hotel/max1024x768/130/130992793.jpg'
  )
)

user4 = User.create!(
  name: "João das Neves",
  password: "123456",
  email: "user4@gmail.com",
  portfolio: Portfolio.new(
    description: 'Great Wall reform',
    remote_photo_url: 'https://nerdist.com/wp-content/uploads/2019/01/The-Wall-Game-of-thrones1312019-1200x676.jpg'
  )
)


puts "creating offers"
Offer.create!(
  title: "Gardening",
  description: "General gardening services with good quality.",
  user: user1
)

Offer.create!(
  title: "Reforms in general",
  description: "I am a handman specialized in tiles. I can make a quality service with a fair price.",
  user: user1
)

Offer.create!(
  title: "Handman",
  description: "I can fix anything. Really. ANYTHING.",
  user: user2
)

Offer.create!(
  title: "Painting",
  description: "Painting services for apartments or houses.",
  user: user2
)

Offer.create!(
  title: "High quality reforms",
  description: "I am the best handman you will find. But my service is expensive.",
  user: user3
)

Offer.create!(
  title: "Pumbling work",
  description: "If you need to have some pumbling work done, call me!",
  user: user3
)

Offer.create!(
  title: "Construction",
  description: "Professional with great experience in construction.",
  user: user4
)

Offer.create!(
  title: "Electrical facilities",
  description: "I can do anything about electrical facilities in your building.",
  user: user4
)






