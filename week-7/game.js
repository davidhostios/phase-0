 // Design Basic Game Solo Challenge- 

 // Ok, whoever you are reviewing this - I bit off WAY TOO MUCH MORE than I could chew -
 // and with time being a factor, I must abandon my original plan for something (anything)
 // that I can turn in and maintain my honesty and integrity. I may get a bad evaluation
 // on this one assignment, but hey I won't be Superman overnight. 
 // So in lieu of an awesome game that has a ton of sweet features like riddles and choices, 
 // I am turning in Rock, paper, scissors, which was going to be a small part 
 // of the larger game, but them's the breaks. 

// This is a solo challenge

// Your mission description: Running through a bunch of alleys and making quick decisions, answering riddles, and playing minigames to evade the authorities
// Overall mission: Escape capture
// Goals: choose the one path to freedom - all others end in demise
// Characters: The user, an accomplice, and an unspecified number of guards. Also, one old crone, one young maiden, maybe more
// Objects: answer the riddle correctly, choose the correct path (which may be random) and win two out of three rock, paper, scissors
// Functions:
// Use the previously built rock, paper, scissors
// Also something else -TBD dice roll? flip a coin?
// Pseudocode
// 1 -Ready to play
// 2 - You're runnin running running - right or left?
// Right - little girl - give up your bread? yes --hides you| no -- reveals you
// After hiding - she puts you in a basket and smuggles you out - 

// Left - old crone - riddle - answer correct - hides you | incorrect --- reveals you
//// After hiding - go to street or roof? either way you are doomed

//
// IF REVEALED - Can you convince the guards to let you go?? They will only agree if you can beat them at ROCK, PAPER, SCISSORS

// Initial Code


var userChoice = prompt("Do you choose rock, paper or scissors?");
var computerChoice = Math.random();
if (computerChoice < 0.34) {
	computerChoice = "rock";
} else if(computerChoice <= 0.67) {
	computerChoice = "paper";
} else {
	computerChoice = "scissors";
} console.log("Computer: " + computerChoice);

var compare = function(choice1, choice2) {
if(choice1 === choice2) {
    return "The result is a tie!"
} else if(choice1 === "paper") {
    if (choice2 === "rock") {
    return "paper wins"
    } 
    else {
    return "scissors wins"   
    }
} else if(choice1 === "rock") {
    if(choice2 === "scissors") {
        return "rock wins"
    }
    else {
        return "paper wins"
    }
} else if(choice1 === "scissors") {
    if(choice2 === "paper") {
        return "scissors wins"
    }
    else {
        return "rock wins"
    }
}
}

compare(userChoice, computerChoice)


// // Epic Game
// // Introduction/First choice
// confirm("Are you ready to embark on an epic adventure...!?")

// confirm("You are a fugitive on the run in an ancient and fantastic land full of knights and ladies, wizards and witches, and dragons and other monsters. You are freshly departed from the scene of a botched filching of your nightly dinner with your capable partner leading the way with little unusual rabble. You are being hotly pursued by the local Watchmen and must attempt a clever escape.")


// confirm("Your Accomplice leads you down a winding alley. Three Watchmen are baring down on you from the other end of the alley. As you emerge from the darkness of the alley to the bright stucco branch of market before you, your Accomplice turns to you and asks in a panicked voice, 'Right or left?' Which do you choose...Right or Left?")


// var userAnswer1 = prompt("Which way do you go, right or left?").toLowerCase()

// if (userAnswer1 = "right")
// {
// 	userAnswer2 = prompt("To your right, you see a s ")
// }
// else {
// 	var userAnswer3 = prompt("As soon as you turn left, you run straight into the biggest person you have ever seen in your entire life! And look at that - he's one the Guardsmen! 'I got you, you rascal! Now you either have to go straight to jail - or you can choose to challenge me to a trial by combat -- What'll it be? Jail or trial?").toLowerCase()
// 	if (userAnswer3 = "jail") {
// 		confirm("Go straight to jail. Do not pass go. Do not collect $200. And may God have mercy on your soul.")
// 	} else (userAnswer3 = "trial") {
// 		confirm("Fine - but according to the traditions of my ancestors, you must defeat me in the ancient sport of ROCK PAPER SCISSORS")
// 	}
// }
// // Second Choice


// // Third Choice


// // Random event - Roll of the dice


// var userChoice = prompt("Do you choose rock, paper or scissors?");
// var computerChoice = Math.random();
// if (computerChoice < 0.34) {
// 	computerChoice = "rock";
// } else if(computerChoice <= 0.67) {
// 	computerChoice = "paper";
// } else {
// 	computerChoice = "scissors";
// } console.log("Computer: " + computerChoice);

// var compare = function(choice1, choice2) {
// if(choice1 === choice2) {
//     return "The result is a tie! Do it again!"
// } else if(choice1 === "paper") {
//     if (choice2 === "rock") {
//     return "paper wins"
//     } 
//     else {
//     return "scissors wins"   
//     }
// } else if(choice1 === "rock") {
//     if(choice2 === "scissors") {
//         return "rock wins"
//     }
//     else {
//         return "paper wins"
//     }
// } else if(choice1 === "scissors") {
//     if(choice2 === "paper") {
//         return "scissors wins"
//     }
//     else {
//         return "rock wins"
//     }
// }
// }

// compare(userChoice, computerChoice)

// // Feedback
// var feedback = prompt("Please rate this game from 1 - 10.")

// if (feedback > 8) 
// {
//     console.log("Thank you!")
// }
// else {
//     console.log("So sorry to have wasted your time then!")
// }







// Refactored Code






// Reflection
// //What was the most difficult part of this challenge?

// Finishing it. I think I got a little carried away trying to create something for which I lack the skill at this point in my learning. However, I look forward to finishing my idea, 
// and kind of see the game playing out like Zorg, where you just kind of have an open ended choice after choice type game.

// What did you learn about creating objects and functions that interact with one another?

// A lot - although I'm sure not as much if I had been able to finish. 
// I learned about the importance of choosing good variable names, and just creating and accessing
// objects and functions will come easier and easier with time.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

// Unfortunately I didn't make it that far.

// How can you access and manipulate properties of objects?
// //
// Using dot or bracket notation is the usual way. If you choose brackets, 
// note that you would be expected to provide strings. They should generally look like this...
// 
// object.property;
// or
// object["property"];
// 
// Also, Javascript really likes their semicolons. Do not forget the semicolons at the end of a line of code
//that needs to run before the next one after it.