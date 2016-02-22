# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: a new die with an integer as an argument 
# Output: the number of sides and a random integer that represents an instance of roll
# Steps:
# Make a variable for sides that is greater than zero.
# Then put the sides variable into the sides method
# Then create a roll method that adheres to the number of 
# sides. 


# 1. Initial Solution

class Die
  def initialize(sides) 
    if sides > 0
       @sides = sides
    else
       raise ArgumentError.new("Requires minimum 1 side")
    end
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end

die = Die.new(40)  
p die.sides
p die.roll 

# 3. Refactored Solution

# I think that this is  a simple and readable enough
# code that refactoring doesn't seem possible with my 
# current skillset. It's pretty DRY as far as I can tell.

# 4. Reflection

# What is an ArgumentError and why would you use one?

# An argument error is a defined error that lets
# the user know they have not given the method a usable
# argument in some way.


# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

# I got to use rand to generate random numbers, but you 
# still have to be careful because if the numbers are not inclusive
# you won't be able to 'roll' the full range of numbers

# What is a Ruby class?

# A Ruby class is a great way to define an object's behavior that you
# can use over and over again.

# Why would you use a Ruby class?

# You would use a class when you know you're gonna have multiple
# objects with the same behaviors. For example, you could
# define a class called ticket that defines the methods for price, venue, performer, etc.

# What is the difference between a local variable and an instance variable?

# A local variable can be used only within the 
# method in which it is defined. An instance 
# variable is local to a specific instance of 
# an object. If one object changes the value of 
# the instance variable, the change only occurs 
# for that object.

# Where can an instance variable be used?

# An instance variable 
# can be used from any method that is called on 
# the same instance.

