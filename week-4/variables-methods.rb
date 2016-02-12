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