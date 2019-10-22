require 'json'
require 'open-uri'

base_url = 'https://api.github.com/users/'
usernames = %w[
  maverickanp
  romeiro-bru
  camilledebernis
  danielsobretudo
  Daria0304
  Isabela-Meyer
  kamrinklauschie
  KristaCalleja
  listrado
  luiscarvalhofrade
  mahanmashoof
  Manoel-Tabet
  marcoscannabrava
  rodsimon1
  Harrytimbog
]

usernames.each do |username|
  serialized_user = open(base_url + username).read
  user = JSON.parse(serialized_user)
  puts "#{user['name']}(#{user['login']})"
  puts "Followers: #{user['followers']}"
  puts "Following: #{user['following']}"
  puts "#{user['public_repos']} public repositories"
  puts "-------"
end
