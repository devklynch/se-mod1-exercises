require './unicorn' #tells the runner file about the unicorn class file
require './power'

unicorn_1=Unicorn.new("Fred","Silver")
unicorn_2=Unicorn.new("Rupert","Green")
super_strength=Power.new("super strength", 5)

unicorn_1.add_power(super_strength)

require './person' #tells the runner file about the unicorn class file
require './power'

person_1=Person.new("Devlin",33)

person_1.have_birthday
person_1.add_favorite_foods("fries")
person_1.add_favorite_foods("pizza")

require 'pry';binding.pry


