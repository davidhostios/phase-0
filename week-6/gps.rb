# Your Names
# 1)David Hostios
# 2)N/A

# We spent [2] hours on this challenge.

# Bakery Serving Size portion calculator.


# # create a method that takes two arguments - the item to make and the number of ingredients
# def serving_size_calc(item_to_make, num_of_ingredients)
#   # create a hash with cookie, pie, and cake that has an integer value given to each key
#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   # create a variable counter that starts at 3
#   error_counter = 3

# # iterate through library hash
#   library.each do |food|
#     # if the hash does not have the item to make
#     if library[food] != library[item_to_make]
# # increment the counter by -1 
#       error_counter += -1
#     end
#   end

# # IF the error counter is greater than 0
#   if error_counter > 0
# # Create an argument error that says
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end

# # Create a variable serving_size that has the value of the hash
# # library with the method values_at called on it, 
# # the argument item_to make at array index 0 (the first slot)
#   serving_size = library.values_at(item_to_make)[0]
# # Create a variable remaining_ingredients and set it = to the argument
# # of num_of ingredients divided by the serving size variable just created
#   remaining_ingredients = num_of_ingredients % serving_size

# # iterate through remaining ingredients variable 
#   case remaining_ingredients
# # In the case that the value 0 is true, return
#   when 0
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
# # In the case it is anything other than 0, return
#   else
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, 
#     you have #{remaining_ingredients} leftover ingredients. 
#     Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end

# # print the method serving size calc with formal parameters and value as follows:
# p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)


# Refactored

def serving_size_calc(food, ingredients)
  food_to_make = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  if food_to_make.has_key?(food) == false
    raise ArgumentError.new("#{food} is not a valid input")
  end

  serving_size = food_to_make[food]
  remaining_ingredients = ingredients % serving_size
  
  output = "Calculations complete: Make #{ingredients / serving_size} of #{food}"
  suggestion =", you have #{remaining_ingredients} leftover ingredients. Suggested baking items: make" 
  
  case remaining_ingredients
  when 0
    return output
  when (5..6) 
    return "#{output}#{suggestion} 1 cake."
  else
    return "#{output}#{suggestion} #{remaining_ingredients} cookies."
  end
end

p serving_size_calc("pie", 13)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

# # Reflection

# What did you learn about making code readable by working on this challenge?

# I learned a lot about what not to do. Much of the original code 
# was written in a roundabout way that did not lend to clarity overall
# so fixing that aspect was helpful to the overall understanding
# of best practices while coming up with a solution.

# For instance, The original copy 
# of serving_size was 

# serving_size = library.values_at(item_to_make)[0]

# but that proved to be a source of confusion for me 
# With the help of my guide I rewrote it as

# serving_size = food_to_make[food]

# which really just makes more sense. 

# Also, I solidified my understanding of effective vs. ineffective 
# variable names. Library is a terrible variable name in this 
# case because it gives us no indication of what it actually is,
# so I changed it to food_to_make, which I think says it all.

# Did you learn any new methods? What did you learn about them?

# has_key? was a method that proved very useful. I actually said
# it in plain english and my guide advised me to look it up, 
# and sure enough there was a method with pretty much the same
# name as what I had just said. 
# This really speaks to the english readability of Ruby and adds
# to its overall ease of use.


# What did you learn about accessing data in hashes? 



# What concepts were solidified when working through this challenge?