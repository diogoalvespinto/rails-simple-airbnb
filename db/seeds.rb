require 'faker'

puts 'Clearing db...'
Flat.delete_all
puts 'db cleared'

puts 'seeding...'
48.times do
  flat = Flat.new(
    name: Faker::Coffee.blend_name,
    address: Faker::Address.street_address,
    description: Faker::Game.genre,
    price_per_night: Faker::Number.decimal(l_digits: 2),
    number_of_guests: Faker::Number.number(digits: 3)
  )
  flat.save!
  puts "#{flat.name} created successfully!"
end
puts 'seeding completed!'
