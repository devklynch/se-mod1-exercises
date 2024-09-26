# Part Two
# Given the following array:
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]

# Use an enumerable to:
# 1. Return an unnested (single layer) array of animals as strings


flatten_animals = nested_animals.flatten
flatten_animals = flatten_animals.map do |animal|
    animal.to_s
end

p flatten_animals


str_animals = nested_animals.flatten.map do |animal|
    animal.to_s
end

#with flat map
str_animals = nested_animals.flat_map do |animal|
    animal.map do |animal|
        animal.to_s
    end
end

# 2. Return an unnested array of animals with length >= 4
flatten_animals = nested_animals.flatten
flatten_animals = flatten_animals.map do |animal|
    animal.to_s
end
flatten_animals = flatten_animals.find_all do |animal|
    animal.length >=4
end
p flatten_animals




# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }
flatten_animals = nested_animals.flatten
animal_hash = {}

flatten_animals.each do |animal|
    animal_hash[animal] = animal.length
end

p animal_hash




pet_inventory = {
 kat: ["cat", "cat", "cat"],
 bob: ["fish", "snake", "gerbil"],
 stoney: ["cat", "dog"],
 gerri: ["dog", "dog"],
 jamison: ["bird", "dog"]
}


puts pet_inventory
# Return an array that holds all the pet types owned by all owners,
# in alphabetical order, using .each
# do NOT use
#.uniq, .flatten, .values, or .keys

#steps
#1 what data type am i trying to return- an array
pet_types =[]

#2 what data types am i working with
#outer layer is a hash
    # values that are arrays
pet_inventory.each do |owner, pets|#|key,value|  #starting at outer hash key-kat, value [cat, cat, cat]
    pets.each do |pet|  #you have access to 3 things-owner, pets, pet; this now goes through each item of [cat,cat,cat]
        if !pet_types.include?(pet)
        pet_types << pet
        end
    end
end

p pet_types.sort