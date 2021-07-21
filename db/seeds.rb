require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Générer 10 article avec la gem Faker (déjà installé!)

# 10times -> content & 10times -> title
puts "Reset DB ..."

puts "Create articles..."

10.times do
  article = Article.new(
    title: Faker::Name.name,
    content: Faker::Lorem.sentence
  )
  article.save!
end

puts "Articles created!"