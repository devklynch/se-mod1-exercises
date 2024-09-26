require './lib/socialmedia'
require 'pry'

  # Creating instances
  user1 = SocialMediaUser.new(1, 5.0)
  user2 = SocialMediaUser.new(2, 4.5)
  
  # Accessing instance methods
  puts user1.rating           	# Output: 5.0
  user1.add_post("My first post")
  
  # Accessing class methods
  puts SocialMediaUser.most_popular.inspect  # Output: <SocialMediaUser:... @id=1, @rating=5.0, ...>
  puts SocialMediaUser.find(1).inspect   	# Output: <SocialMediaUser:... @id=1, @rating=5.0, ...>