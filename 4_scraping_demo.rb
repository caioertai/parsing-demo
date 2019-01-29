require 'open-uri'
require 'nokogiri'

# Let's scrape recipes from http://www.epicurious.com
url = 'https://www.epicurious.com/search/lasagna?content=recipe'

page_string = open(url).read
page = Nokogiri::HTML(page_string)
recipe_cards = page.search('.recipe-content-card h4 a')

p recipe_cards[0]
