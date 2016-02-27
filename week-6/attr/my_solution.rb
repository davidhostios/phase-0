#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: 
# Output:
# Steps:

# class NameData
# 	attr_accessor :name_data, :my_sentence

# 	# def change_name=(name)
# 	# 	@name = new_name
# 	# end

# 	def name_data
# 		@name_data
# 	end
 

# 	def my_sentence=(name_data)
# 		return "Hello #{@name_data}! How wonderful to see you today!"
# 	end
# end

# class Greetings
	
# 	# def initialize
# 	# 	@name_data = "Dave"
# 	# end

# 	def puts_greeting
# 		puts my_sentence.name_data
# 	end
# end

# class NameData
# 	attr_accessor :name_data
	
# 	def initialize 
# 		@name = "Dave"
# 	end
# end

# class Greetings
# 	def initialize 
# 		@name_data = NameData.new
# 	end	

# 	def greeting=(name_data)
# 		puts "Hello #{@name_data}! You did it! Yay!"
# 	end
# end

# greet = Greetings.new
# greet.greeting

# greet = Greetings.new
# greet.name_data = "Dave"
# p greet.puts_greeting

class NameData

	attr_reader :name
	
	def initialize 
		@name = "Dave"
	end

end

class Greetings

	def initialize 
		name = NameData.new
	end

	def hello
		puts "Hello, #{@name}! Yay, you did it!"
	end
end

p greet = Greetings.new


# Reflection


# Release 1

# What are these methods doing?
# These methods are just assigning a value to the 
# instance variables - the ones including 'change' 
# in the name are making it possible to change the 
# values with = outside of the class

# How are they modifying or returning the value of instance variables?
# the methods what_is_age, what_is_name, and
# what_is _occupation are making it possible
# to call the instance variables outside 
# of the class Profile by defining a method that just returns
# the instance variable itself
# The methods change_my_age, change_my_name, and 
# change_my_occupation are doing just that, making
# it possible to set the instance variables 
# @age, @name, and @occupation to 'new' values using =.
# Note the = sign between the method name and the 
# arguments in each of these methods.
# Sleep is a kernel method that inserts a 'dramatic pause'
# handy for displaying information that a reader can digest 
# instead of just bombarding the eyes. 

# Release 2

# What changed between the last release and this release?
# We added a attr_reader method at the top
# The attr_reader method is like a shortcut that 
# automatically creates a method which can be called
# outside the class to access the value of instance variable

# What was replaced?
# this method
# def what_is_age
# 	@age
# end
# was replaced with the attr_reader :age (where :age is a symbol for the auto-
# matically generated method)

# Is this code simpler than the last?
# In my humble opinion, yes. I think any code that 
# behaves like a shortcut to some fundamental aspect 
# has great value. Fewer lines and more flexibility.
# If we wanted to add another quality like 'hometown'
# or something, using an attr_reader would make it 
# simpler to add to our code.

# Release 3

# What changed between the last release and this release?
# This time we added an attr_writer to access :age.
# What was replaced?
# The method change_my_age was replaced by the attr_writer
# Is this code simpler than the last?
# In my opinion, yes. The attr_writer method can accept symbols
# that then take the place of methods which act on 
# instance variables outside the class itself. 
# Much like attr_reader, attr_writer gives us a kind of
# shortcut, but instead of just reading, you can change the value
# of these variables inside the class.

# Release 4





