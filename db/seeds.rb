# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all

version = 1
category = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do
    resto = Restaurant.new(name: "Restaurant #{version}", address: "adresse du resto #{version}, Lille City", category: category.sample)
    version += 1
    resto.save!
    puts resto.name
    puts resto.category
end