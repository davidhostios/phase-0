# Reverse Words


# I worked on this challenge [by myself].
# This challenge took me [ ] hours.

# Pseudocode
=begin
	
CREATE a function reverse_words that takes 1 argument as a string
	IF the string argument is empty
		RETURN the empty string
	ELSE
		SPLIT the string at each ' '
		ITERATE through the array and REVERSE each word - make sure to use the in-place method with !
		JOIN each word back into sentence
		P the result
END function
=end


# Initial Solution
# def reverse_words(string)
# 	if string.empty?
# 		p string
# 	else
# 		words = string.split(' ')
# 		words.each do |words| words.reverse!
# 		end
# 		p words.join(' ')
# 	end
# end

# reverse_words("Let's see if this works correctly!")



# Refactored Solution

def reverse_words(string)
	if string.empty?
		p string
	else
		words = string.split
		words.each {|words| words.reverse!}
		p words.join(' ')
	end
end

reverse_words("Let's see if this thing works correctly!")



# Reflection
=begin
	
What concepts did you review or learn in this challenge?

Just to write something in ruby was nice after writing in Javascript because of its syntactic sugar.
It was really just a review on good practice in Ruby.

What is still confusing to you about Ruby?

Of course, I don't know everything about Ruby, but I feel like I have a good handle on most of the major concepts in Ruby.
I think I could learn more and soidify concepts in classes, nested data structures, modules.

What are you going to study to get more prepared for Phase 1?

I think I will work the extra technical challenges. I have a good grasp on the design techniques but want to solve as many language challenges as possible in the next few days.

=end






