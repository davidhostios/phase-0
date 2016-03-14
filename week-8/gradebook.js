/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:] Sara Rivera
This challenge took me [3] hours.


You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]
// __________________________________________
// Write your code below.

// var gradebook = {
//   Joseph: {testScores: scores[0]},
//   Susan: {testScores: scores[1]},
//   William: {testScores: scores[2]},
//   Elizabeth: {testScores: scores[3]},
  
//   addScore: function(name, score){
//     gradebook[name]['testScores'].push(score);
//   },
  
//   getAverage: function(name){
//     return average(gradebook[name]['testScores']);
//   },
// }

// function average(array){
//     var total = 0;
//     for (var i = 0; i < array.length; i++) {
//       total += array[i];
//     };
//     return(total/array.length)
//     }

// console.log(average(scores[0]))

// __________________________________________
// Refactored Solution

var gradebook = {
  Joseph: {testScores: scores[0]},
  Susan: {testScores: scores[1]},
  William: {testScores: scores[2]},
  Elizabeth: {testScores: scores[3]},
  
  addScore: function(name, score){
    this[name]['testScores'].push(score);
  },
  
  getAverage: function(name){
    return average(this[name]['testScores']);
  },
}

function average(array){
   return array.reduce(function(a,b){return a + b}) /
   array.length;
    }

console.log(average(scores[0]))






// __________________________________________
// Reflect

/*
What did you learn about adding functions to objects?

Adding functions to objects in Javascript is a key concept that we will need to master. Practicing doing so with these challenges are not a waste of time.

How did you iterate over nested arrays in JavaScript?

Very carefully and not without some head scratching. The tricky part for me was figuring out how
to get the specific pieces to point in the direction I needed them to (which I think is one of the main
takeaways of this challenge). Much like making sure your html code points out the correct path of a link or image.

Were there any new methods you were able to incorporate? If so, what were they and how did they work?

We used the reduce method, which works just like the inject method, adding each integer in an array. 

*/







// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)