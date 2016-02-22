
# Research Methods

# I spent [4] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]



my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}


# Define the new method with 2 parameters, source
# (an array) and thing_to_find (a character - 
# in this case the letters "t" and "a") - 
# IF the array (source) passed as the first argument includes
# elements with the character passed as the second argument
# (thing_to_find), somehow combine just those elements
# into a new array

# Person 1's solution

def my_array_finding_method(source, thing_to_find)
  source.select { |word| word.to_s.include? thing_to_find }
end

# p my_array_finding_method(i_want_pets, "t")

def my_hash_finding_method(source, thing_to_find)
  new_array = []
  source.each do |key, value|
    if value == thing_to_find
        new_array.push key
    end
  end
  p new_array
end

 
# p my_hash_finding_method(my_family_pets_ages, 3)
# 
# # Identify and describe the Ruby method(s) you implemented.
# #
#
#

