
// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Danny Hwang
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

//  SET variable to created function to compare and processvoter ballot choices
//    FOR all voters in votes database
//      SET variable to equal value of voter choice
//      FOR all election positions 
//         SET variable to equal the ballot's position value. 
//         IF the value of the voteCount hash position is the same as the nominee
//            INCREASE the value of the nominee value by one.
//         ELSE set the value of the nominee to 1 and create the nominee within voteCount
//         END IF 
//  END FUNCTION
//
//  SET variable to a created function that checks win condition.
//    FOR position within voteCount hash
//      SET count of votes to the value of the voteCount position value      
//      SET the intial tally to zero
//      FOR voter choices in votecount hash
//        IF votes tallied is greater than the tally, THEN
//          SET tally equal to the value of the largest tally and candidate with most votes. 
//          SET winner equal to the candidate with the highest associated tally. 
//          SET Winner of the tally to the associated position within the officers hash.
//        ENDIF
//  END FUNCTION
// Call Functions!
// __________________________________________
// Initial Solution

// var countVotes = function(){
//  for (var voter in votes){
//    var ballot = votes[voter];
//    for (var position in ballot){
//      var nominee = ballot[position]
//      if (voteCount[position].hasOwnProperty(nominee)){
//        voteCount[position][nominee]++;
//      }
//      else {
//        voteCount[position][nominee] = 1
//      }
//    }
//  }
// }

// countVotes()
// console.log(voteCount)

// var checkWin = function() {
//  for (var job in voteCount) {
//    var count = voteCount[job];
//    var tally = 0;
//    var winner;

//    for (var voter in count) { 
//      if ((count[voter]) > tally) {
//        tally = count[voter];
//        winner = voter;
//        }
//      }
//      officers[job] = winner;
//    }
//  }

// checkWin();

// __________________________________________
// Refactored Solution

var countVotes = function(){
 for (var voter in votes){
   var ballot = votes[voter];

   for (var position in ballot){
     var nominee = ballot[position]
     if (voteCount[position].hasOwnProperty(nominee)){
       voteCount[position][nominee]++;
     }
     else {
       voteCount[position][nominee] = 1
     }
   }
 }
}

countVotes()
console.log(voteCount)

var checkWin = function() {
 for (var position in voteCount) {
   var nomineeData = voteCount[position];
   var tally = 0;

   for (var nomineeMostVotes in nomineeData) { 
     if ((nomineeData[nomineeMostVotes]) > tally) {
       tally = nomineeData[nomineeMostVotes];
       var winner = nomineeMostVotes;
       }
     }
     officers[position] = winner;
   }
 }

checkWin();





// __________________________________________
// Reflection
/*
What did you learn about adding functions to objects?
One of the important aspects to note about the syntax involved with creating a function is the inclusion 
of an empty set of parentheses after the function name so that the program can differentiate between a function and a variable. 

What did you learn about iterating over nested objects in JavaScript?
This challenge solidified for me the understanding that the fundamental aspects and logic behind
programming remain the same no matter whate the actual language you may be working with. 


Were you able to find useful methods to help you with this?
Not super effectively in this case, no. We stuck to creating a for loop and iterating through 
with if conditional statements.


What concepts were solidified in the process of working through this challenge?
After getting some help from Andrew, we were able to pull the values from the hashes that we needed to get at. 
Another key takeaway from this challenge was to set these values to a var so that we could manipulate further. 


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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)