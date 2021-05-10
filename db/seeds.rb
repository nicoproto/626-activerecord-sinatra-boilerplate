require "faker"

puts "Creating fake restaurants"
10.times do
  resto = Restaurant.create!(
    name: Faker::Movies::Hobbit.character,
    city: Faker::Address.city
  )
  puts "#{resto.name} created!"
end

puts "Finished seeding 🌱"