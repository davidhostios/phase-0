
# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: jonathan nicolas].
# I spent [4] hours on this challenge.

# Pseudocode

# Input: 16 - digit credit card number
# Output: true or false
# Steps:

# define a class
# array of numbers

# include argument error that reminds the user to input 16 digits
# define method which breaks apart the number and reverses to access every other index Slot

# double every other value (index slots 1, 3, 5, and so on)

# break apart any value with more than one digit place and add all the numbers
# take that sum and use %10 == 0 to see if it is evenly divisible by ten
# Evaluate the final number to true or false

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard

#  attr_reader :card_digits

#  def initialize(card_digits)
#    @card_digits = card_digits
#    raise ArgumentError.new("Card Number must contain 16 digits!") unless @card_digits.to_s.length == 16
#  end

#  def check_card
#    array_card_digits = card_digits.to_s.split("").reverse
#    array_card_digits.map! {|string_number| string_number.to_i}
#    doubled_array_card_digits = array_card_digits.map.with_index{|number,index|
#        if index % 2 == 0
#          number
#        else
#          number *2
#        end
#    }
#    doubled_array_card_digits = doubled_array_card_digits.join("").split("").map!{|string_number| string_number.to_i}
#    # p doubled_array_card_digits

#    sum = doubled_array_card_digits.inject(0){ |sum,x| sum + x}
#    # p sum
#    if sum % 10 == 0
#      return true
#    else
#      return false
#    end
# end
# end

# jo_card = CreditCard.new(4563960122001999)
# p jo_card.check_card




# Refactored Solution

class CreditCard

 attr_reader :card_digits

 def initialize(card_digits)
   @card_digits = card_digits
   raise ArgumentError.new("Card Number must contain 16 digits!") unless @card_digits.to_s.length == 16
 end

 def check_card
 	digits = ''
 	@card_digits.to_s.split('').reverse.each_with_index do |d, i|
 		digits += d if i%2 == 0
 		digits += (d.to_i*2).to_s if i%2 == 1
 	end
 	digits.split('').inject(0){|sum,d| sum + d.to_i}%10 == 0
 end
end

jo_card = CreditCard.new(4563960122001999)
p jo_card.check_card


# Reflection

# What was the most difficult part of this challenge for you and your pair?

# I think the hardest part for me was working out exactly how to do the math
# in such a way that I can understand it. I am more of a science/english/art
# thinker in that sense, so the math was tricky. Especially the inject method - 
# I furthered my understanding with that by getting a point by point
# breakdown of exactly what inject does.

# What new methods did you find to help you when you refactored?

# the each_with_index method was very useful for this challenge. each_with_index is 
# very much like each, but includes an extra argument to refer to the index, which was 
# exactly what we needed for this case.

# What concepts or learnings were you able to solidify in this challenge?

# Well it was really useful for me to see more math in practice. I mean, 
# simple math is a piece of cake but I felt like this was not beginner math at all. 
# It is also always useful to learn more methods and techniques like the combination
# of methods used in the refactored solution. 
# I feel like I need to do about 40 more of these problems to understand the nuances of some
# of this stuff, but this was a great challenge, and how cool is the Luhn algorithm in general?