puts "Hi there, what's your first name?"
first_name = gets.chomp
puts "And your middle name? (My brother-in-law's middle name is Delorean. Yours canNOT be worse than Delorean..."
middle_name = gets.chomp
puts "Aaaand your last name."
last_name = gets.chomp

puts "Nice to meet you, #{first_name.capitalize} #{middle_name.capitalize} #{last_name.capitalize}"


puts "What's your favorite number?"
num = gets.chomp.to_i
puts "I mean that's great and all, but you know what's better than #{num}?"
puts "#{num + 1}. Shut the front door..."

#https://github.com/davidhostios/phase-0/blob/master/week-4/address/my_solution.rb
#https://github.com/davidhostios/phase-0/blob/master/week-4/math/my_solution.rb

# How do you define a local variable?

# You define a local variable by typing in the name of your 
# new variable and setting it equal to some other object,
# be it a different string, some math value, etc. 
# It should look like this:
# new_string = "This is what will display when you use 'new_string'"

# How do you define a method?

# To define a method, you have to have a def at the beginning 
# and end at the end. In the middle part will be the action of the 
# method (which is just like a verb in Ruby). So, a theoretical 
# example would look like this:

# def new_method(argument_1, argument_2)
# 	this is where we tell the method what exactly to do
# end

# and then we could call the method using

# new_method("first argument", "second argument")

# which will display the method using the arguments we input

# What is the difference between a local variable and a method?

# A local variable is like a noun and a method is like a verb. 
# We define a variable to hold some value so that it is easy to
# amend or call. We define a method to do some action, and there
# are even built in methods like puts and gets that can be used on
# variables. 

# How do you run a ruby program from the command line?

# Type:

# ruby name_of_file.rb

# How do you run an RSpec file from the command line?

# Type:


# rspec name_of_rspec_file.

# What was confusing about this material? What made sense?

# I did get stuck on the address format for a while because 
# I got the ruby file to display what I wanted using the 
# built in method puts, but when I ran the rspec file, it returned
# errors until I replaced the puts with a p. I really have no clue
# why it would do that. I hope that if I plug forward it will become clear.

# I understood most of the concepts other than that. The math exercise
# presented no problems, but I'm totally vexed by the puts v p thing. 
