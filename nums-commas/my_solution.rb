# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a random integer
# What is the output? the same integer formatted with properly placed commas(i.e. What should the code return?)
# What are the steps needed to solve the problem?
# if the integer has less than 4 digits, just print the Numbers
# elsif the number is greater than 3, 
# split it into array, 
# reverse it, 
# and add commas every third index slot
# end
# then put the new number

	# sets variable a to argument.string.split at ''
  # sets b to a's length/3
  # if the size of a is less than 4
  	# put the argument number back to string
 # otherwise, the argument as string split, if it has no remainder when
    # divided by 3
      	# sets variable n = -4
# and b variable(a's length /3)
    # to do |i|
    # insert at space -4 a comma
      # the =n subtract n(-4)-4
    # then put the array back together with no spaces
  	# otherwise if n is -4
      # b (length of a/3 however many .times) do |i|
   # insert into the split string number a ,  	
      # n= n-4
# joins back together prints final answer



# 1. Initial Solution
def separate_comma(integer)
	if integer == (0..999)
		puts integer.to_s

	elsif integer == (1000..999999)
		integer.to_s.split('')
		integer[n, -4]

	elsif integer == (1000000..999999999)
		integer.to_s.split ('')
		integer[n, -4]
 
	end
end


# 2. Refactored Solution




# 3. Reflection