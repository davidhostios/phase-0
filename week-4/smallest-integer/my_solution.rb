# Smallest Integer

# I worked on this challenge [by myself, with: ].
# by myself

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
# def smallest_integer(list_of_nums)
# 	list_of_nums = list_of_nums.min 
# end
# above passes rspec

def smallest_integer(list_of_nums)
  small = list_of_nums[0]
  list_of_nums.each do |num|
    if num < small
       small = num
    end
  end
small
end

small = [4, 5, 6, 7, 8, 98, 754 ,7565, 5, 4,3 ,-90, -76, 54]
p smallest_integer(small)
































