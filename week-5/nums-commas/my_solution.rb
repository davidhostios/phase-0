# Numbers to Commas Solo Challenge

# I spent [4] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a random number
# What is the output? the same numberer formatted with properly placed commas
# What are the steps needed to solve the problem?

# the input integer will need to be a string so
# I can count the length.
# I'll need to access specific index slots
# to insert the commas, which will somehow
# need to be incremented accordingly.
# if the number has less than 4 digits, just print the Numbers
# if it's under 9 digits (1,345,789) then 
# insert into the string in the appropriate index slot
# end
# then put the new number

# 1. Initial Solution
def separate_comma(number)
  array = number.to_s.reverse.split(//)
  length = array.length

  if length <= 6
    n = 0
  elsif length % 2 == 0
    n = 1
  else
    n = 2
  end

  if length < 4
    return array.join.reverse
  elsif length <= 9 
    i = 3 
    while i < length + n do 
      array.insert(i, ",")
    i = i + 4      
    end
  end

  return array.join.reverse.to_s
end

p separate_comma(458975823)

# 2. Refactored Solution

def separate_comma(number)
  array = number.to_s.reverse.split(//)
  length = array.length

  if length <= 6
    n = 0
  elsif length % 2 == 0
    n = 1
  else
    n = 2
  end

  if length < 4
    return array.join.reverse
  elsif length <= 9 
    i = 3 
    while i < length + n do 
      array.insert(i, ",")
    i += 4      
    end
  end

  return array.join.reverse.to_s
end

p separate_comma(458975823)



# 3. Reflection

# What was your process for breaking the problem 
# down? What different approaches did you consider?

# Pseudocoding in a logical, step-by-step manner is still quite difficult.
# It reads to me more like just a paraphrased version of what to do instead of 
# following best practices. Honestly I need to practice it because 
# my process then becomes one of experimentation until I get 
# each part to work.
# This is definitely the most challenging part because if I could
# do this more efficiently, I think it would be much faster and easier
# I considered iterating from the back using a negative index number
# but that was too weird figuring out how to increment properly,
# so I just broke the number up, created a string, and reversed it.

# Was your pseudocode effective in helping you build 
# a successful initial solution?

# My pseudocode was not much help because that is one of the areas
# where I'm still just not strong yet. 

# What new Ruby method(s) did you use when refactoring 
# your solution? Describe your experience of using the 
# Ruby documentation to implement it/them (any difficulties, etc.). 
# Did it/they significantly change the way your code works? If so, how?

# I had read about but not actually implemented split, so I had to figure out 
# how to split between characters. That part is widely documented and thus wasn't 
# terribly difficult.

# How did you initially iterate through the data structure?

# I figured out fairly easily this bit

# if length < 4
#     return array.join.reverse
#   elsif length <= 9 
#     i = 3 
#     while i < length + n do 
#       array.insert(i, ",")
#     i += 4      
#     end
#   end

# but the 

# if length <= 6
#     n = 0
#   elsif length % 2 == 0
#     n = 1
#   else
#     n = 2
#   end

# part I basically had to look up and figure out what it was doing from there.
# (after banging my head against the wall for quite some time)

# Do you feel your refactored solution is more readable than your initial solution? Why?

# It's not a drastic change, by any means (I guess at that point I was pretty burnt out), but I feel like the
# solution overall is pretty readable. 