 // JavaScript Olympics

// I paired [by myself, with: Danny Hwang] on this challenge.

// This challenge took me [1.5] hours.


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

/*
What JavaScript knowledge did you solidify in this challenge?

This challenge helped me to understand the constructor methods much better, and was also just a good practice getting more familiar with the language.

What are constructor functions?

Constructor Functions are empty objects that can have properties and methods added to them.

How are constructors different from Ruby classes (in your research)?

Ruby allows attributes access rights to change and set, where JavaScript (at least to my knowledge) does not allow us to do that in the same way. Javascripts “this” argument refers to its own attributes tha can be changed.



*/