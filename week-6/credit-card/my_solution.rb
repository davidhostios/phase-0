
# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: jonathan nicolas].
# I spent [8:00-] hours on this challenge.

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
# 	attr_reader :card_digits
# #
# def initialize(card_digits)
# 	@card_digits = card_digits
# 	raise ArgumentError.new("Card number must contain 16 digits") unless @card_digits.to_s.length == 16
# end

# def check_card 
# 	array_card_digits = card_digits.to_s.split("").reverse
# 	array_card_digits.map!{|string_number| string_number.to_i}
# 	doubled_array_card_digits = array_card_digits.map.with_index do |number, index|
# 		if index % 2 == 0
# 			number
# 		else
# 			number * 2
# 		end
# 	end

# 	doubled_array_card_digits = double_array_card_digits.join("").split("").map! {|string_number| string_number.to_i}
# 	p doubled_array_card_digits

# 	sum = doubled_array_card_digits.inject(0){|sum, x| sum + x}
# 	p sum
# 	if sum % 10 == 0 
# 		return true
# 	else
# 		return false
# 	end
# end

# p check_card = CreditCard.new(4737029961296432)


class CreditCard

 attr_reader :card_digits

 def initialize(card_digits)
   @card_digits = card_digits
   raise ArgumentError.new("Card Number must contain 16 digits!") unless @card_digits.to_s.length == 16
 end

 def check_card
   array_card_digits = card_digits.to_s.split("").reverse
   array_card_digits.map! {|string_number| string_number.to_i}
   doubled_array_card_digits = array_card_digits.map.with_index{|number,index|
       if index % 2 == 0
         number
       else
         number *2
       end
   }
   doubled_array_card_digits = doubled_array_card_digits.join("").split("").map!{|string_number| string_number.to_i}
   p doubled_array_card_digits

# I don't get the math on this line - I don't get how/why we are using inject
   sum = doubled_array_card_digits.inject(0){ |sum,x| sum + x}
   p sum
   if sum % 10 == 0
     return true
   else
     return false
   end
end
end

jo_card = CreditCard.new(4563960122001999)
p jo_card.check_card
# my_card = CreditCard.new
# my_number = 4737029961296432
# p my_card(my_number)



# Refactored Solution








# Reflection

# What was the most difficult part of this challenge for you and your pair?
# What new methods did you find to help you when you refactored?
# What concepts or learnings were you able to solidify in this challenge?
