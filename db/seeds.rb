# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.create(email:"jdhall@live.co.uk", password: "password")

10.times do 
    User.create(email:Faker::Internet.unique.email, 
                password: "password",
                name:Faker::Name.name,
                contact:Faker::Company.duns_number

    )
end

20.times do
    Skill.create(
        name: Faker::Hacker.ingverb,
        description: Faker::Lorem.paragraph(sentence_count: 3),
        price: Faker::Number.decimal(l_digits: 2),
        skill_location: "china",
        skill_type: ["DIY","Driving","Teaching","Animal care","Coding","Household chores"].sample,
        user_id: rand(1..11))
end