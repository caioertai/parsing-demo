require 'json'

# TODO: let's read/write data from beers.json
filepath = 'data/beers.json'

# TODO: Check the JSON file
# Let's tell ruby to read it
# What object do we get?
file_string = open(filepath).read

# TODO: Parse the JSON
# Display the name of the second beer
beer_hash = JSON.parse(file_string)
# puts beer_hash['beers'][1]['name']


# TODO: List the origins of each beer
# beers = beer_hash['beers']
# beers.each do |beer|
#   puts beer['origin']
# end

# TODO: List unique origins
beers = beer_hash['beers']
beer_origins = []
beers.each do |beer|
  beer_origins << beer['origin']
end
puts beer_origins.uniq



# TODO: Stringify JSON from Ruby
characters = [
  { name: 'Hank',   class: 'Ranger',    age: 15 },
  { name: 'Eric',   class: 'Knight',    age: 15 },
  { name: 'Bob',    class: 'Barbarian', age: 8  },
  { name: 'Presto', class: 'Mage',      age: 14 },
  { name: 'Sheila', class: 'Thief',     age: 13 }
]
p JSON.generate(characters)

