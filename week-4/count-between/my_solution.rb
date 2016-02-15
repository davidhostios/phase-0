
# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  	range = Array.new
  	if list_of_integers.count == 0
  		return 0
  	elsif lower_bound <= upper_bound
  		list_of_integers.each do |num|
  			if (num >= lower_bound) && (num <= upper_bound)
  				range << num
  			end
  		end
  	p range.length
  	else
  		p 0
  end
end

integers = [123, 3453, 34, 321, 121]
bottom = 37
top = 2345
p count_between(integers, bottom, top)