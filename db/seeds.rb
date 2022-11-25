require "open-uri"
require "faker"


puts "Destroying users..."
User.destroy_all
puts "Creating users..."

User.create(
  first_name: "Daniel",
  last_name: "Foca",
  address: "Den Haag",
  email: "daniel@daniel.com",
  password: "123456"
)

User.create(
  first_name: "Freya",
  last_name: "Heaton",
  address: "Amsterdam",
  email: "freya@freya.com",
  password: "123456"
)

User.create(
  first_name: "Remco",
  last_name: "Jonk",
  address: "Schermerhon",
  email: "remco@remco.com",
  password: "123456"
)

puts "Destroying boats..."
Boat.destroy_all
puts "Creating boats..."


10.times do
file = URI.open("https://www.tripsavvy.com/thmb/zqtqdh6ZP6WudmMugTW9qokasVQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/catamaran-5c6477e346e0fb0001f2567b.jpg")
@boat = Boat.new(
  name:
  Faker::Name.name,
  description: "bla bla,",
  address: "Amsterdam",
  price: 1500,
  category: "sailing",
  size: 15,
  capacity: 15
)
@boat.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
@boat.user = User.all.first
p @boat.errors.full_messages unless @boat.valid?
@boat.save
end

10.times do
  file = URI.open("https://files.promostore.de/catalog/product/cache/3/image/9df78eab33525d08d6e5fb8d27136e95/8/6/05512d3a6ede1624a25146b6ddca0248/Relatiegeschenk-Badeend-Roeiboot-860357346.jpg")
  @boat = Boat.new(
    name:
    Faker::Name.name,
    description: "bla bla,",
    address: "Antwerp",
    price: 1500,
    category: "Row boat",
    size: 15,
    capacity: 15
  )
  @boat.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  @boat.user = User.all.first
  p @boat.errors.full_messages unless @boat.valid?
  @boat.save
  end

  10.times do
    file = URI.open("https://res.cloudinary.com/dipnvqfev/image/upload/v1669220951/production/27uux9viwa1yccuuj9eziy5v4llh.jpg")
    @boat = Boat.new(
      name:
      Faker::Name.name,
      description: "bla bla,",
      address: "Rotterdam",
      price: 1500,
      category: "Fishing",
      size: 15,
      capacity: 15
    )
    @boat.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
    @boat.user = User.all.first
    p @boat.errors.full_messages unless @boat.valid?
    @boat.save
    end

    10.times do
      file = URI.open("https://res.cloudinary.com/dipnvqfev/image/upload/v1669214377/production/8utgzpmw7aee3ksshk9h4d3z21vo.jpg")
      @boat = Boat.new(
        name:
        Faker::Name.name,
        description: "bla bla,",
        address: "Hamburg",
        price: 1500,
        category: "Yacht",
        size: 15,
        capacity: 15
      )
      @boat.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
      @boat.user = User.all.first
      p @boat.errors.full_messages unless @boat.valid?
      @boat.save
      end

      10.times do
        file = URI.open("https://res.cloudinary.com/dipnvqfev/image/upload/v1669214377/production/8utgzpmw7aee3ksshk9h4d3z21vo.jpg")
        @boat = Boat.new(
          name:
          Faker::Name.name,
          description: "bla bla,",
          address: "London",
          price: 1500,
          category: "Motor boats",
          size: 15,
          capacity: 15
        )
        @boat.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
        @boat.user = User.all.first
        p @boat.errors.full_messages unless @boat.valid?
        @boat.save
        end

puts "Finished!"
