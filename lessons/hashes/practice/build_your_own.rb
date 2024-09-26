# Your turn to create a hash. Make sure to use symbols for the keys.

# Create your hash here

# Steps
# 1. Create a hash called new_band.
new_band= {}

# 2. Add a bassist to your new_band hash.
new_band[:bassist] = "Flea"
# 3. Find the name of your bassist by accessing the :bassist key in the new_band hash.
my_bassist = new_band[:bassist]
# 4. Find the value attached to :vocalist in your hash.
my_vocalist = new_band[:vocalist]
#will return nil
# 5. Add a vocalist to your hash.
new_band[:vocalist] = "Anthony K"
# 6. Add a drummer to your hash.
new_band[:drummer] = "Chad Smith"
# 7. Get all the keys in your Hash. What kind of object does that method return?
new_band.keys
# 8. Get all the values in your Hash. What kind of object does that method return?
new_band.values
# 9. Assign a new value to the :vocalist key of your hash.

new_band[:vocalist] += "New"
#This will make vocalist ="Anthony KNew"

new_band[:vocalist] = "New"
# 10. How has keys changed after the last step? How has values changed?
puts new_band.keys
puts new_band.values
puts new_band

office_supplies ={
    staples: 9000,
    paper: 45050,
    chairs: 5,
    desks: 2
}

puts office_supplies[:staples]
office_supplies[:paper] +=2000
puts office_supplies
puts office_supplies.keys
puts office_supplies.invert


