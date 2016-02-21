# What did you learn about pseudocode from working on this challenge?
# My partner has a very good handle on the logical step-by-step 
# approach to a challenge.Observing how he went through the 
# challenge to make pseudocode has helped me undersrtand better
# how to make my pseudocode reflect the step-by-step process of 
# tracing the logic to get the output desired.

# What are the tradeoffs of using Arrays and Hashes for this challenge?
# We didn't actually even try to use arrays on this challenge 
# because it seemed that hashes in this case would be superior.
# I suppose the tradeoffs would be that arrays are slightly simpler 
# to use, but hashes store more information that can be recalled.

# What does a method return?

# If a method's return value is not explicitly defined, it simply returns
# the last line of code evaluated

# What kind of things can you pass into methods as arguments?

# You can pass most objects as a method argument, whether it be a variable, 
# string, array, hash, or even other methods (and more) because objects always have a
# built-in boolean value.

# How can you pass information between methods?

# The easiest way I see to do so is to simply use a method inside another method

# What concepts were solidified in this challenge, and what concepts are still confusing?

# What I find most valuable is just drilling the syntax
# and solidifying the concepts of writing good, logical code.

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# [fill in any steps here]
# set default quantity
# print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

$grocery_list = Hash.new

def create_list(list, quantity = 1)
  list_ary = list.split(" ")
  

  list_ary.each do |key|
  $grocery_list[key] = quantity
  end

  print_list
end




# Method to add an item to a list
# input: item name and optional quantity
# steps: define a method 
# add to the defined hash
# print out again
# output: the same with more added to it

def add_to_list(item, quantity = 1)
	$grocery_list[item] = quantity
	$grocery_list
	print_list
end


# Method to remove an item from the list
# input: item to remove
# steps:look through each key/value pair and compare it to the item
# IF the key is equal to the item
# then we remove the key/value pair
# ELSE return failure message
# RETURN updated list
# output: hash
def remove_item(item)
	if $grocery_list.include?(item)
	$grocery_list.delete(item)
	end	
	print_list
end

# Method to update the quantity of an item
# input: item, quantity
# steps:
# find out if the hash has a specific key 
# IF it does include the item
# change the value of that key 
# END
# display the new list 
# output: hash with updated value

def update_list(item, quantity)
	if $grocery_list.include?(item)	
	$grocery_list[item] = quantity
	end
	print_list()
end

# Method to print a list and make it look pretty
# input: the hash list
# steps: iterate through each key/value
# print formatted key/value pairs to new lines
# output: formatted hash list

def print_list
	$grocery_list.each do |key, value|
		puts "- #{key}: #{value}"
	end
	puts
end

create_list("diapers wipes formula bananas apples oranges pears kale")
add_to_list("snow peas", 7)
remove_item("diapers")
update_list("wipes", 4)