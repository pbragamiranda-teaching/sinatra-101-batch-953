require "faker"

puts "Populating DB..."

16.times do
  # Restaurant.create -> create = new + save
  restaurant = Restaurant.new(
    name: Faker::Coffee.blend_name,
    city: Faker::Address.city
  )
  restaurant.save

  puts "#{restaurant.name} was sucessfully created."
end

puts "done."
