require 'open-uri' #built-in gem to load and parse URLs
require 'json' #built-in gem to parse JSON
posts = open('http://jsonplaceholder.typicode.com/posts')
parsed_posts = JSON.parse(posts.read)
puts parsed_posts
parsed_posts.class
parsed_posts.first
parsed_posts.first.keys
parsed_posts.first["title"]
