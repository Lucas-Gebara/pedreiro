if Rails.env.development?
  puts "deleting database"
  Offer.destroy_all
  User.destroy_all
end

puts "creating users"
user1 = User.create!(
  name: "vince",
  address: "gloria",
  cpf: "123456",
  phone: "19838498",
  password: "hallooooo",
  email: "vince13@gmail.com",
  portfolio: Portfolio.new(
    description: 'Artsy pedreiro',
    remote_photo_url: 'https://www.culturepartnership.eu/upload/news/58f7bc042bbfc.png'
  )
)

user2 = User.create!(
  name: "lukas",
  address: "copacabana",
  cpf: "654321",
  phone: "9585749",
  password: "holaaaaa",
  email: "lukas007@gmail.com",
  portfolio: Portfolio.new(
    description: 'modern pedreiro',
    remote_photo_url: 'https://odis.homeaway.com/odis/listing/0ddf690b-1f02-43d9-b238-00ee3c484bc3.c10.jpg'
  )
)

user3 = User.create!(
  name: "filipe",
  address: "tijuca",
  cpf: "5969869",
  phone: "898385",
  password: "namasteeeee",
  email: "filipe1@gmail.com",
  portfolio: Portfolio.new(
    description: 'modern pedreiro',
    remote_photo_url: 'https://s-ec.bstatic.com/images/hotel/max1024x768/130/130992793.jpg'
  )
)

puts "creating offers"
Offer.create!(
  title: "Gardening",
  description: "I care about your garden",
  user: user1
)

Offer.create!(
  title: "fix washingmachine",
  description: "i will fix your washing machine",
  user: user2
)

Offer.create!(
  title: "washing",
  description: "i will wash your clothes",
  user: user3
)

