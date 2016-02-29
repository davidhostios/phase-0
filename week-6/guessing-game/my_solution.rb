# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: a positive integer 
# Output: :high and :low symbols as hints and :correct symbol if correct
# Steps:
=begin

1 - create a new class that takes as its argument a positive integer
2 - create 'answer' instance variable
3 - create method that takes a number as an argument and set it to an instance variable
4 - IF the number is > the answer, put symbol high, lower, put symbol lower, spot-on, put correct
5 - create a solved? method that puts true or false depending on if the answer was correct
* the summary of this one was very helpful creating pseudocode
=end

# # Initial Solution

class GuessingGame
	def initialize(answer)
  		@answer = answer
  	end

	def guess(number)
		@guess = number
		if number > @answer
			p :high
		elsif number < @answer
			p :low
		else
			p :correct
		end
	end

	def solved?
		if 	@guess == @answer
			true
		else
			false
		end
	end
end

game = GuessingGame.new(10)

p game.solved?

game.guess(14)
p game.solved?
game.guess(6)
p game.solved?
game.guess(10)
p game.solved?


# Refactored Solution

class GuessingGame
	def initialize
  		@answer = rand(1..10)
  		@solved = false
  	end

	def guess(number)
		if number > @answer
			p :high
		elsif number < @answer
			p :low
		else
			@solved = true
			p :correct
		end
	end

	def solved?
		if 	@solved
			true
		else
			false
		end
	end
end

game = GuessingGame.new

p game.solved?

game.guess(14)
p game.solved?
game.guess(6)
p game.solved?
game.guess(10)
p game.solved?




# Reflection

=begin
	
How do instance variables and methods represent the characteristics 
and behaviors (actions) of a real-world object?

An instance variable is like a trait common to each instance of a class that has add to it
being unique. In that regard, instance variables are like traits of dogs
and dogs is a class. You could have a class for cats, birds, fish, etc. but 
dogs would have its own instance variables like tongue_color, size, hair_length
etc. and a method inside the class could do something like return a breed if given enough info. 

When should you use instance variables? What do they do for you?

You could use instance variables when you need to do things in different
classifications. Taking my animal-inspired metaphor further, you could
create a class for cats, birds, fish, etcs and build a huge library of information based 
on the instance variables. 

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Flow control is how we use different conditions to manipulate the action
within a block of code. I think the easiest to use are the if and unless 
statements. Using an if/else statement literally just says "if this statement,
do this, or else do that." I didn't run into too many problems with this one.  

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
	
It could be that these are ruby built-in keywords and we don't necessarily want 
them to do their intended action or something.
Research would indicate that it is because the same symbol, when referenced many times
throughout source code is always stored as the same entity. They are "immutable strings."












=end

















