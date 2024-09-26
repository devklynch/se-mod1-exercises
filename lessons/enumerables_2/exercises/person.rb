# Part ONE
# Given the objects and array below, write the code that returns minimum and maximum values:
# By name (alphabetically)
# By age (youngest and oldest)
# By name length (shortest and longest)
# By number of children (least and most)

#Part TWO
# Given the object and array below, write the code that returns the sorted values:
# By name (alphabetically)
# By age (youngest to oldest)
# By name length (shortest to longest)
# By number of children (least to most)


class Person
  attr_reader :name,
              :age,
              :children

  def initialize(name, age, kids)
    @name = name
    @age  = age
    @children = kids
  end
end

kardashians = []
kardashians << Person.new("Kourtney", 42, ["Mason", "Penelope", "Reign"])
kardashians << Person.new("Kim", 41, ["North", "Saint", "Chicago", "Psalm"])
kardashians << Person.new("Kris", 65, ["Kourtney", "Kim", "Khloe", "Rob", "Kendall", "Kylie"])
kardashians << Person.new("Khloe", 37, ["True"])

# Part ONE
# Given the objects and array below, write the code that returns minimum and maximum values:
# By name (alphabetically)
min_name= kardashians.min_by do |kardashian|
  kardashian.name
end
puts min_name.name
max_name = kardashians.max_by do |kardashian|
  kardashian.name
end
puts max_name.name
# By age (youngest and oldest)
min_age= kardashians.min_by do |kardashian|
  kardashian.age
end
puts min_age.name

max_age = kardashians.max_by do |kardashian|
  kardashian.age
end
puts max_name.name
# By name length (shortest and longest)
min_length= kardashians.min_by do |kardashian|
  kardashian.name.length
end
puts min_length.name

max_length = kardashians.max_by do |kardashian|
  kardashian.name.length
end
puts max_length.name

# By number of children (least and most)
min_kids= kardashians.min_by do |kardashian|
  kardashian.children.count
end
puts min_kids.name

max_kids = kardashians.max_by do |kardashian|
  kardashian.children.count
end
puts max_kids.name
