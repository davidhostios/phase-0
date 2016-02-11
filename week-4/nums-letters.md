
[Defining Variables](https://github.com/davidhostios/phase-0/blob/master/week-4/defining-variables.rb)

[Simple String](https://github.com/davidhostios/phase-0/blob/master/week-4/simple-string.rb)

[Basic Math](https://github.com/davidhostios/phase-0/blob/master/week-4/basic-math.rb)


#What does puts do?

Puts simply displays a string

#What is an integer? What is a float?

Integers are whole numbers, and a float is any number with a decimal point

#What is the difference between float and integer division? 

Float division will return a number with a decimal value, integer division will always round down. For instance, in 'Learn to program' the example is 9/2. Float division will return 4.5, integer will return 4.

#How would you explain the difference to someone who doesn't know anything about programming?

I would say that float division takes into account remainders and finishes the math, but integer division just finds the largest whole number.

#Hours in a year 
I did not factor at all the leap year - oops!
```ruby
puts 24 * 365
```
#Minutes in a decade
Again, totally ignored the leap year - could be 2 or 3 in a decade
```ruby
puts ((60 * 24) * 365) * 10
```

#How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby has a bunch of built-in functions, and regular
math happens to be included. You can basically treat
Ruby like a simple calculator.

#What is the difference between integers and floats?

Integers are regular whole numbers and floats are
numbers which include decimals.

#What is the difference between integer and float division?

Integer division will return an answer rounded down to
the nearest whole number, for example 9/4 will return 2. Float division will return the decimal answer, for example 9.0/4.0 will return 2.25.

#What are strings? Why and when would you use them?

Strings are usually a bit of text that you want to 
display, denoted by quotes (single or double - though
personally I find double to be more concise)

One can call a variable within a string by using "#{this_var_format}"

#What are local variables? Why and when would you use them?

Local variables are the variables we define on our
computers, usually just by setting some name, like
some_variable = "This is a string, but it could be a
number of things"

#How was this challenge? Did you get a good review of some of the basics?

This challenge was easy after working Zed Shaw's 
'Learn Ruby the Hard Way'. Good refresher as we switch
gears from what we have been learning back to Ruby. 