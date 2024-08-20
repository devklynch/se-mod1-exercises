require './person' #tells the runner file about the unicorn class file
require './power'

person_1=Person.new("Devlin",33)

person_1.have_birthday
person_1.add_favorite_foods("fries")
person_1.add_favorite_foods("pizza")

require 'pry';binding.pry