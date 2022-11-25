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

sailing_photo = ["https://res.cloudinary.com/dipnvqfev/image/upload/v1669383208/production/maurits-bausenhart-9L3V1rmeYZ4-unsplash_ti8og8.jpg",
                 "https://res.cloudinary.com/dipnvqfev/image/upload/v1669383208/production/maurits-bausenhart-9L3V1rmeYZ4-unsplash_ti8og8.jpg",
                 "https://res.cloudinary.com/dipnvqfev/image/upload/v1669383206/production/valeria-terekhina-XLghD0KHAck-unsplash_t8aghh.jpg",
                 "https://res.cloudinary.com/dipnvqfev/image/upload/v1669383206/production/valeria-terekhina-Xu6H2bBSW1U-unsplash_cwb0rk.jpg",
                 "https://res.cloudinary.com/dipnvqfev/image/upload/v1669383205/production/ron-dauphin-_80Yw7o7hlo-unsplash_vmmvsj.jpg"]

5.times do
  file = URI.open(sailing_photo.sample)
  @boat = Boat.new(
  name: Faker::Name.name,
  description: "bla bla,",
  address: ["Amsterdam", "Rotterdam", "London", "Monaco", "Porto"].sample,
  price: 1500,
  category: "Sailing",
  size: 15,
  capacity: 15
)
  @boat.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  @boat.user = User.all.sample
  @boat.save
end

p "sailing complete"

row_boat_photo = ["https://res.cloudinary.com/dipnvqfev/image/upload/v1669383094/production/gulfside-mike-KrlekyEGHsc-unsplash_yg1f1m.jpg",
                  "https://res.cloudinary.com/dipnvqfev/image/upload/v1669383093/production/nico-smit-97AXKO-pdrk-unsplash_wm12bk.jpg",
                  "https://res.cloudinary.com/dipnvqfev/image/upload/v1669382980/production/quino-al-dhGFLj3rI0Q-unsplash_dtmvde.jpg",
                 ]

3.times do
  file = URI.open(row_boat_photo.sample)
  @boat = Boat.new(
    name:
    Faker::Name.name,
    description: "bla bla,",
    address: ["Amsterdam", "Rotterdam", "London", "Monaco", "Porto"].sample,
    price: 1500,
    category: "Row boat",
    size: 15,
    capacity: 15
  )
  @boat.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  @boat.user = User.all.first

  @boat.save
end
p "row boat complete"


fishing_photo = ["https://res.cloudinary.com/dipnvqfev/image/upload/v1669383374/production/annie-spratt-8vBXTliybPo-unsplash_ntbbdq.jpg",
                 "https://res.cloudinary.com/dipnvqfev/image/upload/v1669383374/production/paul-levesley-9nWZtUCscZc-unsplash_uahhdp.jpg",
                 "https://res.cloudinary.com/dipnvqfev/image/upload/v1669383374/production/anastasia-palagutina-txbXuzTJdSA-unsplash_yaqdyj.jpg",
                 "https://res.cloudinary.com/dipnvqfev/image/upload/v1669220951/production/27uux9viwa1yccuuj9eziy5v4llh.jpg",
                 "https://res.cloudinary.com/dipnvqfev/image/upload/v1669383374/production/marvin-maduro-rtWPr2FQT6Y-unsplash_lnldxy.jpg"]

5.times do
  file = URI.open(fishing_photo.sample)
  @boat = Boat.new(
    name:
    Faker::Name.name,
    description: "bla bla,",
    address: ["Amsterdam", "Rotterdam", "London", "Monaco", "Porto"].sample,
    price: 1500,
    category: "Fishing",
    size: 15,
    capacity: 15
  )
  @boat.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  @boat.user = User.all.first
  @boat.save
end
p "fishing complete"

yacht_photo = ["https://res.cloudinary.com/dipnvqfev/image/upload/v1669383255/production/marcin-ciszewski-Zexjl0v3MRU-unsplash_jjhzgj.jpg",
               "https://res.cloudinary.com/dipnvqfev/image/upload/v1669383251/production/eugene-chystiakov-bt-AYttMuww-unsplash_qsxbye.jpg",
               "https://res.cloudinary.com/dipnvqfev/image/upload/v1669214377/production/8utgzpmw7aee3ksshk9h4d3z21vo.jpg",
               "https://res.cloudinary.com/dipnvqfev/image/upload/v1669212735/production/lsmohnx8hh6t8tpco8v6gwdapb7o.jpg"]



4.times do
  file = URI.open(yacht_photo.sample)
  @boat = Boat.new(
    name:
    Faker::Name.name,
    description: "bla bla,",
    address: ["Amsterdam", "Rotterdam", "London", "Monaco", "Porto"].sample,
    price: 1500,
    category: "Yacht",
    size: 15,
    capacity: 15
  )
  @boat.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  @boat.user = User.all.first
  @boat.save
end

p "yacht complete"



motor_boat_photo = ["https://res.cloudinary.com/dipnvqfev/image/upload/v1669383094/production/vincent-ghilione-BZIFDBfdyho-unsplash_ga1hi4.jpg",
                    "https://res.cloudinary.com/dipnvqfev/image/upload/v1669383095/production/alex-lesik-WF90intuPdk-unsplash_wtmlid.jpg",
                    "https://res.cloudinary.com/dipnvqfev/image/upload/v1669383093/production/emil-dosen-SiN3jDqxoRA-unsplash_mcdied.jpg",
                    "https://res.cloudinary.com/dipnvqfev/image/upload/v1669385827/production/20150906_111312_cpd8ky.jpg",
                    "https://res.cloudinary.com/dipnvqfev/image/upload/v1669385826/production/sloep_gb1bm4.jpg"]

      5.times do
        file = URI.open(motor_boat_photo.sample)
        @boat = Boat.new(
          name:
          Faker::Name.name,
          description: "bla bla,",
          address: ["Amsterdam", "Rotterdam", "London", "Monaco", "Porto"].sample,
          price: 1500,
          category: "Motor boats",
          size: 15,
          capacity: 15
        )
        @boat.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
        @boat.user = User.all.first

        @boat.save
        end

puts "Finished!"
