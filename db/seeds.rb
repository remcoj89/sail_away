require "open-uri"
require "faker"

puts "Destroying users..."
User.destroy_all
puts "Creating users..."

User.create(
  first_name: "Daniel",
  last_name: "Foca",
  address: "Den Haag",
  email_address: "daniel@daniel.com",
  password: "123456"
)

User.create(
  first_name: "Freya",
  last_name: "Heaton",
  address: "Amsterdam",
  email_address: "freya@freya.com",
  password: "123456"
)

User.create(
  first_name: "Remco",
  last_name: "Jonk",
  address: "Schermerhon",
  email_address: "remco@remco.com",
  password: "123456"
)


puts "Destroying boats..."
Boat.destroy_all
puts "Creating boats..."

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
@boat = Boat.new(
  name: Faker::Name.unique.name,
  description: "bla bla,",
  address: "18 Rue Beautreillis, 75004 Paris, France",
  price: 1500,
  category: "sailing",
  size: 15,
  capacity: 15
)
@boat.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
@boat.user = User.sample
p @boat.errors.full_messages unless @boat.valid?
@boat.save


puts "Finished!"
