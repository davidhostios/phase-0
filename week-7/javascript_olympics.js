 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up




// // // // Bulk Up

function win(athlete) {
  for (var i = 0; i < athlete.length; i++) {
    console.log(athlete[i].name + " won the " + athlete[i].event + "!");
  }
}

var athlete = [
{ name: "Sarah Hughes",
  event: "Single Ladies",},
{ name: "Danny",
  event: "Soccer"}
]

win(athlete)

// Jumble your words

function reverse(inputString) {
  console.log(inputString.split("").reverse().join(""))
}

reverse("Hello")

// 2,4,6,8

var array = [1,2,3,4,5,6,7,8],
    openArray = [];

function even(array) {
  for (var i = 0; i < array.length; ++i) {
    if ((array[i] % 2) === 0) {
      openArray.push(array[i]); }
  }
  console.log(openArray)
}

even(array)

// "We built this city"
function Athlete(name, age, sport, quote) {
this.name = name;
this.age = age;
this.sport = sport;
this.quote = quote;
}


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection