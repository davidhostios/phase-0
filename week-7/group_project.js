
// Pseudocode:

// Step 1 - Define a function, called sum, that takes an array of integers as its argument.

// Step 2 - If the array is empty raise an argument error.

// Step 3 - Iterate through the array, adding each number. 

// Step 4 - Return sum as an integer.



var sum = function(array) {
  if (array.length == 0 )
    {console.log("here's your argument error")}
  else{
  var count = 0;
    for (var i = 0; i < array.length; i ++) {
    count = count + array[i];
  };
  return count;
  }
}
console.log(sum([1,2,3,4]))

// Pseudocode:

// Step 1 - Define a function called 'mean' that takes an array of integers as its argument.

// Step 2 - If the array is empty raise an argument error.

// Step 3 - Define a variable (sum) and set it equal to the sum of the input array using the sum function defined above.

// Step 4 - Convert sum from an integer to a float.

// Step 5 - Define variable (average) and set it to the sum variable divided by the array length.

// Step 6 - Return average.

// 1 try to make for loop, (for average)
// 2 check numbers against each other?
// 3 ghetto hack for decimals (.toFixed())

var mean = function(array) {
  if (array.length == 0 ){
    console.log("here's your argument error")
  }else{
  var sum = 0;
    for(var i = 0; i < array.length; i++) {
    sum += array[i]};
  }
  var mean = sum / array.length
    return mean

}
console.log(mean([1,2,3,4,5,6]))


// Pseudocode:

// Step 1 - Define function called median that takes an array of integers as its argument. 

// Step 2 - If the array is empty raise an argument error.

// Step 3 - Sort the array from smallest to largest.

// Step 4 - Define variable, called median

// - IF array length is odd, set median to middle number in array. 

// - ELSE array length is even, add two middle numbers, divide by 2.0 and set it to median.

// Step 5 - Return median.
// .sort(function(a,b){return a - b;});
// Math.median

var median = function(array) {
  if (array.length == 0 ){
    console.log("here's your argument error")
  }else{
    array.sort(function (a,b){
      return a - b;
    });
    var median = Math.floor(array.length/2);
    if (array.length % 2)
      return array[median];
    else
      return (array[median-1] + array[median]) / 2.0;
  }
}
console.log(median([1,2,3,4,5,6,7]))

