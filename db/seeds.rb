# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin m = Movie.create(name: 'Star Wars')

m.tags << Tag.find_or_create_by(name: 'Sci-fi')
m.tags << Tag.new(name: 'Classic')

m.save
=end	

Movie.destroy_all
Tag.destroy_all

20.times do
  
m =  Movie.create!(name: Faker::Movie.quote)
m.tags << Tag.find_or_create_by(name: Faker::Color.color_name)
m.tags << Tag.find_or_create_by(name: Faker::Color.color_name)
m.save

end

