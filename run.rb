require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


bronx_zoo = Zoo.new("Bronx Zoo", "Bronx")
sea_world = Zoo.new("Sea World", "San Diego")

Zoo.find_by_location("Bronx")

shamu = sea_world.acquire_animal("Shamu", "whale", "1,000 lb")

serena = bronx_zoo.acquire_animal("Serena", "panther", "150 lb")
bill = bronx_zoo.acquire_animal("Bill", "lion", "150 lb")
sabrina = bronx_zoo.acquire_animal("Sabrina", "cheetah", "150 lb")
dario = bronx_zoo.acquire_animal("Dario", "panther", "150 lb")

# binding.pry

print "🦑"
p bronx_zoo.animals.first.nickname
print "🦁"
p bronx_zoo.animal_species
print "🐯"
p bronx_zoo.find_by_species("panther").last.nickname
print "🐸"
p bronx_zoo.animal_nicknames
print "🦋"
p Zoo.find_by_location("San Diego").first.name
print "🐳"
p Animal.all.sample.zoo.name
print "🦕"
p Animal.find_by_species(bronx_zoo.animal_species.sample).sample.nickname
