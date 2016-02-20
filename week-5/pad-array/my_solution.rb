# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? The input is an array and a minimum size for the array (positive integer).
# What is the output? (i.e. What should the code return?) A minimum size array that we specified that include the additional specified or not specified argument. 
# What are the steps needed to solve the problem?
=begin
Non-destructive:
Make sure methods we use do not permanently alter the original object.
Create a copy of the given array and use methods to affect that array. 
push a empty array or specified array into that copy in the correct index.

Destructive:
Adding bang to certain non-destructive methods to make them destructive (permanent change).
Push a empty array or specified array into the final array into the correct index slot.

=end
# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
    difference = min_size - array.length
    if min_size <= array.length
        p array
    elsif min_size == 0
        p array
    elsif min_size > 0
        difference.times do |x|
        array.push(value) 
        end
    end
    p array
end

def pad(array, min_size, value = nil) #non-destructive
   
   difference = min_size - array.length
   if min_size <= array.length
       array_copy = array.clone
       p array_copy   
   elsif min_size == 0
       array_copy = array.clone
       p array_copy 
   elsif min_size > 0
     array_copy = array.clone
     difference.times do |x|
     array_copy.push(value)
     end
   end
   p array_copy 
end



# 3. Refactored Solution



# 4. Reflection