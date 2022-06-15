puts "seeding data..."

# 10.times do
#   Role.create(character_name: Faker::Name.name)
# end 

20.times do
  r = rand(1..10).to_i
  r_n = 
  Audition.create({
    actor: Faker::Name.unique.name,
    location: Faker::Address.full_address,
    phone: Faker::PhoneNumber.phone_number,
    hired: false ,
    role_id: r 
  })
end 
puts "Seeding complete."