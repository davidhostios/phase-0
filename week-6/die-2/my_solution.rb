# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Array of strings (labels)
# Output: Determine if labels is empty
# sides returns the number of sides
# roll returns the value of a random side
# Steps:
# initialize new die class and check to make sure it 
# has more than one side - raise argument error if needed
# define method sides that returns the number of sides 

# Initial Solution

# class Die
#   def initialize(labels)
#   	@labels = labels
#   	if labels.length == 0 
#   		raise ArgumentError.new("We need more sides!")
#   	end
#   end

#   def sides
#   	@labels.length
#   end

#   def roll

#   	if @labels.length == 1
#   		@labels.join
#   	else
#   		@labels.sample
#   	end
#   end
# end



# Refactored Solution

class Die 
	attr_reader :sides
	def initialize(labels)
		@labels = labels
		@sides = @labels.length
		raise ArgumentError.new("We need more sides!") unless @labels.length > 0
	end

	def roll
		@labels.sample
	end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
p die.sides
p die.roll


# # Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

# Where the first exercise focused on making a random string of integers, this one
# was a random letter. The logic remained the same, but some of the methods changed. 

# What does this exercise teach you about making code that is easily changeable or modifiable? 

# Often, well-written code logic can be recycled and repurposed to tackle other challenges. 

# What new methods did you learn when working on this challenge, if any?

# Sample was a new one - literally just returns a random element from an array.

# What concepts about classes were you able to solidify in this challenge?

# I was able to implement an attr_reader with much success in this one.