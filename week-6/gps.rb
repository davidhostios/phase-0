# create a method that takes two arguments - the item to make and the number of ingredients
def serving_size_calc(item_to_make, num_of_ingredients)
  # create a hash with cookie, pie, and cake that has a value given to each key
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # create a variable that starts at 3
  error_counter = 3

# iterate through a hash
  library.each do |food|
    # if the hash does not have the item to make
    if library[food] != library[item_to_make]
# increment the counter by -1 (so we're counting down - but why not just subtract 1?)
      error_counter = error_counter + -1
    end
  end

# IF the error counter is greater than 1
  if error_counter > 0
# Create an argument error that says
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

# Create a variable serving_size that has the value of the hash
# library with the method values_at called on it, 
# the argument item_to make at array index 0 (the first slot)
  serving_size = library.values_at(item_to_make)[0]
# Create a variable remaining_ingredients and set it = to the argument
# of num_of ingredients divided by the serving size variable just created
  remaining_ingredients = num_of_ingredients % serving_size

# iterate through remaining ingredients variable 
  case remaining_ingredients
# In the case that the value 0 is true, return
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
# In the case it is anything other than 0, return
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

# print the method serving size calc with formal parameters and value as follows:
p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)
