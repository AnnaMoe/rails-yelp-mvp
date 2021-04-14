puts "Cleaning database..."
Restaurant.destroy_all
puts "database is clean"

puts "creating restaurants"
10.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample 
  )
  puts "restaurant #{restaurant.id} is created"
end

puts "done"