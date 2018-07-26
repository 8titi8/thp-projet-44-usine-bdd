# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do # creation de 5 assemblages
	assembly = Assembly.create(name: Faker::Vehicle.make_and_model)
end

50.times do # creation de 15 pieces 
	part = Part.create(part_number: Faker::Vehicle.engine)
end


20.times do |id|# ajoute successivement dans les assemblages 3 pieces de facon aleatoire 
	assemblies_part = Assembly.find(id+1).parts << [Part.find(rand((Part.first.id)..(Part.last.id))), Part.find(rand((Part.first.id)..(Part.last.id))), Part.find(rand((Part.first.id)..(Part.last.id)))]
	id += 1
end