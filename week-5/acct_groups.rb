# Pseudocode

# define a method that iterates through each 
# number 1-57.
# The method needs to break the numbers up
# into groups of 3 at a minimum. 
# The Driver code just makes sure 
# that the method does what it needs to do. 

def group
students = (1..57).to_a
 students.each_slice(3).to_a
end

p group



# What was the most interesting and most 
# difficult part of this challenge?

# Most interesting: Learning each_slice method
# Most difficult: pseudocode.

# Do you feel you are improving in your ability 
# to write pseudocode and break the problem down?

# Slightly - it's at least semi-structured now.
# This, to me, is both the most challenging
# and important part of understanding code.

# Was your approach for automating this task a good solution? 
# What could have made it even better?

# Yes. This worked pretty well without having to 
# spend forever on it - clearer pseudocode would help me 
# the most. Pseudocode, pseudocode, pseudocode.

# What data structure did you decide to store the 
# accountability groups in and why?

# Array - because we are only storing one value AND
# they happen to be integers, this one definitely made 
# the most sense.

# What did you learn in the process of refactoring your 
# initial solution? Did you learn any new Ruby methods?

# I learned each_slice. There are a thousand ways to skin
# a cat in Ruby. I was happy that this one wasn't terribly
# complicated in that regard.
