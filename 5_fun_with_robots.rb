require 'json'
require 'open-uri'

base_url = 'https://api.github.com/users/'
usernames = %w[user1 user2 user3]




























usernames = %w[
  aklor
  camcam06
  ChristopheNonato
  eduardoin
  Floriane
  gugaweigert
  leovsferreira
  lucaslealm
  lucasvonlachmann
  marcusmaione
  marinaalbuquerque
  svetamedved
]

usernames.each do |username|
  serialized_user = open(base_url + username).read
  user = JSON.parse(serialized_user)
  puts "#{user['name']}(#{user['login']}) has #{user['public_repos']} public repositories."
end
