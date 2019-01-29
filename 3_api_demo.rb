require 'json'
require 'open-uri'

# TODO: Let's fetch name and bio from a given GitHub username
puts "From which user do you want info?"
username = gets.chomp

url = 'https://api.github.com/users/' + username

# TODO: Print user info
user_string = open(url).read
user = JSON.parse(user_string)

puts "#{user['name']} has #{user['public_repos']} public repositories"
