# Analyze the Errors

# I worked on this challenge with: jonathan nicholas.
# I spent .75 hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  break
  end
end

cartman_hates("sandwiches")

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# The name of the file with the error is errors.rb
# 2. What is the line number where the error occurs?
# While the error states line 170 (the very end), the part that is missing
# should be on line 16-17
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# Unexpected end-of-input - That it expected the keyword 'end'
# 5. Where is the error in the code?
# We have an infinite loop that needs to be closed using 'end'. Because the computer
# cannot read our mind, it assumes it would have been at the end, even though
# we know it should be added on line 16.
# 6. Why did the interpreter give you this error?
# Because the 'while' creates a loop that needs to be broken - I did mess up
# and forget to break this loop and created an infinite loop at one point

# --- error -------------------------------------------------------

south_park = "Comedy Central's Greatest Creation"
puts south_park

# 1. What is the line number where the error occurs?
# Line 43
# 2. What is the type of error message?
# Undefined local variable
# 3. What additional information does the interpreter provide about this type of error?
# for main:Object (NameError)
# 4. Where is the error in the code?
# This names an object without defining what type or giving it a value.
# It's like pointing at a tree and saying "thing"
# 5. Why did the interpreter give you this error?
# Ruby doesn't know what we are talking about - it's undefined

# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs?
# 60
# 2. What is the type of error message?
# undefined method `cartman'
# 3. What additional information does the interpreter provide about this type of error?
# for main:Object (NoMethodError)
# 4. Where is the error in the code?
# before and after cartman()
# 5. Why did the interpreter give you this error?
# The method is lacking the def and end key to syntax

# --- error -------------------------------------------------------

def cartmans_phrase(arg)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 76
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# (0 for 1) (ArgumentError)
# 4. Where is the error in the code?
# on line 76 (or on 80)
# 5. Why did the interpreter give you this error?
# we have the wrong number of arguments between where we define the 
# argument and where we call the argument - we either need to add an 
# 'arg' to the method when we define it (preferred) or take away the 
# 'I hate Kyle' argument when we call the method

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("Offensive Message!")


# 1. What is the line number where the error occurs?
# 98
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# (1 for 0)
# 4. Where is the error in the code?
# line 102 needs to have an argument added
# 5. Why did the interpreter give you this error?
# because we had a mismatched number of arguments between defining and
# calling the method

# This was the opposite of the previous example beginning on line 76 - that one
# had a method defined with no arguments but called with one, this one 
# has a method defined with one argument but called with none. Neither
# will function.


# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'I am the president!')

# 1. What is the line number where the error occurs?
# 125
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 2) (ArgumentError)
# 4. Where is the error in the code?
# from errors.rb:129:in `<main>'
# 5. Why did the interpreter give you this error?
# Again we find ourselves with the wrong number of arguments

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# 144
# 2. What is the type of error message?
# Type Error
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# at the * symbol
# 5. Why did the interpreter give you this error?
# Ruby doesn't know how to multiply by 'Respect my authoritay' number of times

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/2
puts amount_of_kfc_left

# 1. What is the line number where the error occurs?
# 159
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0 
# 4. Where is the error in the code?
# line 159
# 5. Why did the interpreter give you this error?
# improper fractions do not compute, apparently

# --- error -------------------------------------------------------

require_relative "cartmans_essay.rb"

# 1. What is the line number where the error occurs?
# 175
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file -- /Users/davidhostios/Desktop/DBC/phase-0/cartmans_essay.md
# 4. Where is the error in the code?
# there is no cartmans_essay.md file
# 5. Why did the interpreter give you this error?
# Obviously it cannot point to a file which doesn't exist


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
 # I felt like the final one was the most difficult to read because the
 # path being displayed really adds to the visual clutter

# How did you figure out what the issue with the error was?
  # I knew that in the past we had never encountered a markdown file in an rspec file,
  # so my guess was to create a file that it could use, in this case an .rb, then 
  # 	point the require_relative to that

# Were you able to determine why each error message happened based on the code? 

# Yes - by taking my time and reading it very carefully

# When you encounter errors in your future code, what process will you follow to help you debug?

# Well a good first step is to glean whatever information (which is actually quite a lot) you can
# from the error message - it will tell you what kind and where so from there it really shoudln't be that bad.