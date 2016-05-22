require 'faker'

5.times do
  user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(10)
  )
  user.skip_confirmation!
  user.save!
end

userone = User.create!(
  name: 'User One',
  email: 'userone@example.com',
  password: 'helloworld'
)

userone.skip_confirmation!
userone.save!

users = User.all
puts "#{User.count} users created"

25.times do
  Item.create!(
    user: users.sample,
    name: Faker::Lorem.sentence
  )
end
items = Item.all
puts "#{Item.count} items created"

puts "Seed finished"
