# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# # Write a method mode which takes an Array of
# numbers or strings as its input and returns an 
# Array of the most frequent values.

# # If there's only one most-frequent value, it 
# returns a single-element Array.

# 0. Pseudocode

# What is the input? an array of numbers or strings 
# What is the output? An array of most frequent values
# What are the steps needed to solve the problem?
# define the method with a single parameter - the array as input
# create a new hash
# create a counter and set it equal to zero
# the counter will increment by single digits
# give the hash the array parameters and count what that array at that number is
# create a variable that is the hash at its maximum value
# create another variable that equals the hash values at their maximum value
# somehow print out the variable of max values

# 1. Initial Solution
def mode(array)
  h = Hash.new
  num = 0
  largest = 0
  while num < array.length
  h[array[num]] = array.count(array[num])
  num = num + 1
  end
  max_quantity = h.values.max
  max_h = h.select { |k, v| v == max_quantity }.keys
  p max_h
end



# 3. Refactored Solution

def mode(array)
  h = Hash.new
  num = 0
  while num < array.length
  h[array[num]] = array.count(array[num])
  num += 1
  end
  max_quantity = h.values.max
  max_h = h.select { |k, v| v == max_quantity }.keys
  p max_h
end




# 4. Reflection

# Which data structure did you and your pair decide to 
# implement and why?

# We used a hash because we could access the values easier than referring to the index number

# Were you more successful breaking this problem down 
# into implementable pseudocode than the last with a pair? 

# We were successful but I must admit I kind 'refactored' my pseudocode afterward
# because I want to make sure I am understanding the logical 
# process behind the method. I struggle with making good pseudocode
# beforehand that takes into account all the factors I end up needing.

# What issues/successes did you run into when translating 
# your pseudocode to code?

# Like previously stated, it's difficult to walk step by step through
# the challenge without kind of experimenting to see what works, 
# so the issues I run into with pseudocode are that I haven't 
# thought of all the steps I need to get from point a to point b.

# What methods did you use to iterate through the 
# content? Did you find any good ones when you were 
# refactoring? Were they difficult to implement?

# length, max, select, values, and keys were all used in this challenge. 
# They were not terribly difficult to implement in this case because 
# we didn't really need to add any arguments or anything to make it work.