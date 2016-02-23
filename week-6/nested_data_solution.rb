# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

# p hash[outer:][inner:][0][3]
p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.each do |x| 
  if x.kind_of?(Array)
    x.each {|element| p element + 5}
  else
    p x + 5
  end
end

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# Refactored * We couldn't really get an initial solution to work here
# because nesting each statements within one another was tough
# So we used flatten

fixed = startup_names.flatten
fixed.each do |element|
    element << "ly"
  end

print fixed


# Reflection 

# What are some general rules you can apply to nested arrays?

# You can access an index slot in an array with a number starting
# with 0 and counting up from there. so like array[0][0][0] is the
# first slot of the first slot of the first slot. See above example
# if that doesn't make sense

# What are some ways you can iterate over nested arrays?

# The grand mac daddy of iteration is the each method, and this 
# applies to arrays as well. Using each it is fairly easy to
# go through each element and do some action.

# Did you find any good new methods to implement or did you re-use 
# one you were already familiar with? What was it and why did you 
# decide that was a good option?

# For the bonus solution, we used flatten, which allowed us 
# to avoid using an each within an each.

