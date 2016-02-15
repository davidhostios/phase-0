
# I worked on this challenge [by myself, with: ].


# Your Solution Below

# def valid_triangle?(a, b, c)
#   if a == b  && b == c 
#   	return true
#   elsif a == 0 || b == 0 || c == 0
#   	return false
#   elsif a == b || b == c || a == c
#   	return true
#   elsif a**2 + b**2 == c**2 || b**2 + c**2 == a**2 || a**2 + c**2 == b**2
#   	return true
#   elsif a + b < c || a + c < b || a + c < b 
#   	return false
#   else
#   	return 
#   end
# end

def valid_triangle?(a, b, c)
	if a + b > c && a + c > b && b + c > a
		return true
	else
		return false
	end
end