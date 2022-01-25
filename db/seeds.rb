require 'faker'

5.times do
  Author.create(
    gender: Faker::Gender.binary_type,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    birthday: Faker::Date.birthday(min_age: 18, max_age: 99)
  )
end
