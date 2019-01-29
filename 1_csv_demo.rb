require 'csv'
# filepath = 'data/beers.csv'
# csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

# ============== Reading (Parsing) CSV =================
# TODO: Let's p each CSV line
# TODO: List beer names

CSV.foreach(filepath, csv_options) do |beer|
  puts "#{beer['Name']} is a #{beer['Appearance']} beer, from #{beer['Origin']}"
end



# ============= Loading (Storing) CSV ==================

characters = [
  { name: 'Hank',   class: 'Ranger',    age: 15 },
  { name: 'Eric',   class: 'Knight',    age: 15 },
  { name: 'Bob',    class: 'Barbarian', age: 8  },
  { name: 'Presto', class: 'Mage',      age: 14 },
  { name: 'Sheila', class: 'Thief',     age: 13 }
]

new_filepath = 'data/dnd_characters.csv'
csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }

CSV.open(new_filepath, 'wb', csv_options) do |csv|
  # csv << characters[0].keys
  csv << ["name", "class", "age"]

  characters.each do |character|
    csv << [character[:name], character[:class], character[:age]]
  end
end
