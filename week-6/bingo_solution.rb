# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [5] hours on this challenge.
=begin
  
Keep all of the logic and variables inside of the class BingoBoard. 
Method calls should be outside.
Initialize a new instance of the BingoBoard using the provided board array.
Create a method to call letters and numbers (like B43). It will need to 
generate a letter ( "B", "I", "N", "G", "O") and a number from 1 to 100.
Create a method to check whether that column has that number in the 
existing bingo_board.
If the number is in the column, replace it with an "X".
Display the new board to the console (Make it pretty).
Break the problem down into small steps, then write out those steps into 
pseudocode. Your pseudocode should avoid using any code-specific language
or identifying specific methods. Use the best practices you've learned 
thus far. 
=end

# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
# Create an array that will randomly pick a letter (b, i, n, g, o) and then a number 1-100 inclusive

# Check the called column for the number called.
  # use the letter's index slot to check for the number in that slot

# If the number is in the column, replace with an 'x'
# create a method that will replace the number (if it's there) with an "X"

# Display a column to the console
  # Display the elements in the letter position determined by check method

# Display the board to the console (prettily)
# Write a method that somehow displays the formatted bingo board instead of just printing out arrays

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @letter = ["B","I","N","G","O"].sample
    @number = rand(1..100)
  end

  def checker
    @bingo_board.each do |row|
      index = row.index(@number)
      row[index] = "X" unless index.nil?
    end
  end
    
    def display
    puts "Random Call: #{@letter}, #{@number}"
    puts "-----------------"
    p "B   I   N   G   O"
    puts self.checker.map { |block| puts block.to_s }
    p "B   I   N   G   O"
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.checker
new_game.display



# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call_num_letter
    @letter = ["B","I","N","G","O"].sample
    @number = rand(1..100)
  end

  def checker
    @bingo_board.each do |row|
      index = row.index(@number)
      row[index] = "X" unless index.nil?
    end
  end
    
    def display
    puts
    puts
    puts "Random Call: #{@letter}, #{@number}"
    puts "-----------------"
    p "B   I   N   G   O"
    puts self.checker.map { |block| puts block.inspect }
    p "B   I   N   G   O"
  end
end




#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
p new_game.call_num_letter
new_game.checker
new_game.display


#Reflection

# I'm not gonna lie. I had a really hard time with this one. I definitely ended up using 
# all the resources at my disposal to figure out how to accomplish this. 

=begin
  
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

Extremely. I felt like I was only able to get a vague idea of what I needed to do and then researching
different ways to attack it really solidified my understanding of what needed to be done. 
Pseudocoding and translating into useable code is the part that activates my impostor syndrome. 

What are the benefits of using a class for this challenge?

One could assign any number of random boards to any number of people and this code should run 
for all of them. 

How can you access coordinates in a nested array?

Because arrays are accessed by their index numbers, the first index slot of the second nested array would look
like array[1][0] - When referring to an index slot it is important to note that 
one should begin counting up from 0, not 1. 

What methods did you use to access and modify the array?

The index method was important in this case because it returns the index of an element if some condition is true. 
The .sample method was initially used on the b-i-n-g-o array to just pick one randomly.
These two methods were key to getting a functioning solution.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

I stumbled on two interesting things during the course of research for this challenge
the first was that in this case, .inspect was interchangeable with .to_s.

The second was that you can call methods on self, which is one thing in theory and another altogether in practice.

The inspect method, according to my own understanding, literally just replaces to_s. Index was the
most useful because it can give you information about the elements upon which it is run.

How did you determine what should be an instance variable versus a local variable?

Instance variables should be used if you need to call a variable throughout your class
(or even in some cases, outside your class). A local variable should only be used if you don't
need to use it outside of the given method where it lives.

What do you feel is most improved in your refactored solution?

I sort of ran out of steam on this challenge - My refactor really just replaced .to_s with inspect
and changed variable names to something I think is more effective. 

=end


