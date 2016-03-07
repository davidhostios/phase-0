// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Dan "the man" Homer

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
 // function comma()

console.log(commas(123456));



// Refactored Solution




// Your Own Tests (OPTIONAL)




// Reflection

