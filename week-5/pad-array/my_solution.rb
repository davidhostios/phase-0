# Pad an Array

# I worked on this challenge [by myself, with: Danny Hwang]

# I spent [2.5] hours on this challenge.


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

def pad!(array, min_size, value = nil) #destructive
  remaining_slots = min_size - array.length
  if min_size <= array.length
    p array
  elsif min_size == 0
    p array
  elsif min_size > 0
    remaining_slots.times do |x|
    array.push(value) 
    end
  end
  p array
end

def pad(array, min_size, value = nil) #non-destructive
    
    remaining_slots = min_size - array.length
    array_copy = array.clone

    if min_size <= array.length
      p array_copy   
    elsif min_size == 0
      p array_copy 
    elsif min_size > 0
      remaining_slots.times do |x|
      array_copy.push(value)
      end
    end
    p array_copy 
end

# 4. Reflection

# Were you successful in breaking the problem down into small steps?

# Yes, we did our best to break it down into small steps. It's like eating an elephant. You can only do it one bite at a time.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

# Parts are definitely easier than others. Defining methods, figuring out what to output, these are the easy parts. Other parts are much more challenging (like correct code block syntax in a method)

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

# We did have to take a break and figure out how to use .clone properly because it didn't work at first.
# As a result, getting the whole non-destructive method to function properly was difficult.

# When you refactored, did you find any existing methods in Ruby to clean up your code?

# I think we included some pretty good methods in our initial solution, so it wasn't a dramatic difference.

# How readable is your solution? Did you and your pair choose descriptive variable names?

# We tried to pick variable names that were descriptive and increased the overall legibility of our code.

# What is the difference between destructive and non-destructive methods in your own words?

# Non-destructive methods do not effect the original version, often by making a copy of some kind. Destructive methods often use bang (!) and directly effect the original version.


