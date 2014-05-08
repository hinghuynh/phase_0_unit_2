# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4,
                       "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution ()
def my_array_finding_method(source, thing_to_find)
  source.select{ |word| word.to_s.include? thing_to_find }
end

def my_hash_finding_method(source, thing_to_find)
  things = source.select{ |k,v| v == thing_to_find }
  things.keys
end

# Identify and describe the ruby method you implemented.
#
#
#

# Person 2 (Hing Huynh)
def my_array_modification_method(source, thing_to_modify)
  # go through array if element is a number add thing_to_modify
  source.map! { |x| x.is_a?(Integer) ? x + thing_to_modify : x }
end

def my_hash_modification_method(source, thing_to_modify)
  source.each { |key,value| source[key] += thing_to_modify }
end

# Identify and describe the ruby method you implemented.
# I used .map, which creates a new array containing the values returned by the block.
# I used .each, which calls the given block once for each element in self, passing that element as a parameter.
#

# Person 3
def my_array_sorting_method(source)
  source.sort_by { |a| a.to_s }
end

def my_hash_sorting_method(source)
  source.sort_by { |name, age| age }
end

# Identify and describe the ruby method you implemented.
#
#
#


# Person 4
def my_array_deletion_method(source, thing_to_delete)
  source.each { |word| source.delete(word) if word.include? thing_to_delete }
end

def my_hash_deletion_method(source, thing_to_delete)
  source.delete(thing_to_delete)
end

# Identify and describe the ruby method you implemented.
#
#
#


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods.
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]]
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
#
# This was the hardest exercise this week for me, but it got me to really understand how to properly
# manipulate hashes and arrays. I struggled trying to figure out how to write a conditional inside
# a loop. In the end, I ended up using a ternary operation to get it done. The other problem I had
# was figuring out why when i trying to manipulate the hash's value, I couldn't get the value to change
# and if I did, the values that I didn't manipulate turned to nil. Now that I know that the key and values
# are linked in the sense that if I want to change value, I need to manipulate key's value using hash[key].
# This exercise really got my brain juices flowing, but it was frustrating after trying so many possiblities,
# and not really understand why my solution wasn't working.
