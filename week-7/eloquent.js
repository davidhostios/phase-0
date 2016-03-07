// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var name = "Dave"
if (name.length > 1) {
	console.log("Hey " + name + "!");
} else {
	console.log("Your name can't be that short!");
}

// var food = prompt("What's your favorite food?"); {
// 	console.log("Hey that's my favorite food too!");
// }



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for (var number = 1; number < 101; number++ ){
	if(number % 3 == 0 && number % 5 == 0) 
		console.log("fizzbuzz");
	else if (number %3 == 0)
		console.log("fizz");
	else if (number % 5 == 0)
		console.log("buzz")
	else
		console.log(number);
}

// Functions

// Complete the `minimum` exercise.

function min(num1, num2) {
	return Math.min(num1, num2);
}
console.log(min(45, 76))



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Dave",
	age: 30,
	favoriteFoods: ["pizza", "bacon", "beer"],
	quirk: "cannot tolerate guitars that are out of tune."
}
console.log("My name is " + me.name + " and I am " + me["age"].toString() + " years old. My top foods are " + me["favoriteFoods"].toString(", ") + " and one thing you should know about me is that I " + me.quirk)

/*
Introduction (Links to an external site.)
Did you learn anything new about JavaScript or programming in general?
>Absolutely - I learned about how binary works and a bit about the history of programming. 

Are there any concepts you feel uncomfortable with?
>Yes - I will need to be very careful when using the Javascript syntax. 

Ch. 1: Values, Types, and Operators (Links to an external site.)
Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
>There are many similarities and differences. Like, a whole bunch. 
One similarity is that the logical operators remain the same. &&, ||, and ! are all going to have the same meaning in each language.
Another similarity is that .push(), .pop(), .unshift(), and shift() all work very much the same way. *make sure to include the () with a 
Javascript method or it will think it's a property. 

One difference is that the + symbol concatenates in Javascript, whereas in Ruby it can be used to return a new array. In Javascript it will only work to create a new string.
Another difference is that Ruby has a number of built-in boolean methods like include? that Javascript lacks. The only one we can use in Javascript is Regexp.test().

Ch. 2: Program Structure (Links to an external site.)
What is an expression?
>An expression if a fragment of code that produces a value. 

What is the purpose of semicolons in JavaScript? Are they always required?
>The use of semicolons tells Javascript when a certain bit of code is done. They are not always required, but for our purposes, I will assume that they basically are necessary. 

What causes a variable to return undefined?
>A variable returns undefined when you define it without giving it a value. One cannot ask for the value of an empty variable.

Write your own variable and do something to it in the eloquent.js file.
see above

What does console.log do and when would you use it? What Ruby method(s) is this similar to?
>console.log will write out its arguments to some text output device. It is similar to p, puts, or print in Ruby. 

Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
>see above

Describe while and for loops
>While loops will perform a certain action until certain conditions are met. For loops will perform a certain action a set number of times. 
One thing to bear in mind is that it is extremely important to provide an exit strategy for your loops or risk crashing your console running an infinite loop. You must 
at some point have your loop evaluate to some value to stop running. 

What other similarities or differences between Ruby and JavaScript did you notice in this section?
>Well the logic remains the same. Really the differences are just in syntax. How we communicate with the computer. 
One thing I really like about Javscript that Ruby lacks (at least as far as I know today) is the ability to have pop-up 
windows that can interact with a user. Ruby has a lot more built-in methods that make it a little more readable and
certainly more flexible, but Javascript is very straightforward in approach, which I really like. 

Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.
see above

Ch. 3: Functions (Links to an external site.) (Skip the sections on closure and recursion)

What are the differences between local and global variables in JavaScript?
>Variables that live inside a function are called local, and cannot be used outside that function,
Global variables live outside of a function and can be assigned a number of different values over the course of your program.

When should you use functions?
>It would be hard to write a Javascript program without using functions because functions are what we use to produce different values and run different blocks of code. 
You use functions when you want to initiate some action in Javascript.

What is a function declaration?
>A function declaration is a shorter way to define a function variable. Instead of 

var func = function()

you just write it as 

function func()

This also changes up the scope so that it is moved to the top of what is being processed.

Complete the minimum exercise in the eloquent.js file.
>see above
min(45, 76)
Ch. 4: Data Structures: Objects and Arrays (Links to an external site.) 

Skip the sections on the Lycanthrope's log, Computing Correlations, and sections from Further Arrayology to the Global Object, but read the chapter summary.

What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
>These are essentially the same thing. There are certain cases when the bracket notation is preferable, but note that within brackets, a string will be expected. 

Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.
>see above

What is a JavaScript object with a name and value property similar to in Ruby?
>An Object Literal is similar to a hash in Ruby. Key value pairs are featured in both. 
*/

