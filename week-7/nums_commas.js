// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Dan Homer

// Pseudocode

// input: an integer of undefined length
// output: correctly formatted integer with commas inserted
// 
// receive number -split it - insert ',' at the correct location - re join - optional print
// start index -1 - move to index -4 - insert comma
// start index = length of the number -1; decrement by 1; IF (length - current position is divisible by 3), add a comma
// methods for -slice -join insert

// What you want is the splice function on the native array object.
// arr.splice(index, 0, item); will insert item into arr at the specified index.


// Initial Solution

var commas = function(integer) {
  var format = integer.toString().split("");
  var returnValue = [];
  var counter = format.length - 1; //equal to index of last number
  while (counter >= 0) {
    returnValue.unshift(format[counter]);
    if ((format.length - counter) % 3 == 0 && counter > 0) {
      returnValue.unshift(",");
    }
    counter --;
  }
  return returnValue.join("");
 }

console.log(commas(123456));



// Refactored Solution




// Your Own Tests (OPTIONAL)




// Reflection

/*

What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

I tried to use the same logic because that is how my brain naturally thinks. 
Although in doing so I found that not everything I wanted to do was possible in Javascript, 
like accessing an array with a negative index number.

What did you learn about iterating over arrays in JavaScript?

It can be somewhat more complicated than in Ruby because Ruby has all kinds of built-in methods that can be helpful.

What was different about solving this problem in JavaScript?

It actually seemed a little easier than doing the same in Ruby because without all the extra methods and 'syntactic sugar' 
we just focused on getting a good answer. We did get momentarily hung up on the additional comma when there were only 6 digits.


What built-in methods did you find to incorporate in your refactored solution?

We sort of refactored as we went on this one - we found a bunch of good methods like split, join, and unshift.

*/