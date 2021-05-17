/*:
 ////////////////////////////////
 
 APP1X: Build your very first iOS app
 Lesson 2: Control Flow and Advanced Variables - Extension Exercises.
 
 PLEASE BE AWARE THAT AS YOU ADD LINES OF CODE TO THIS PLAYGROUND, THE LINE NUMBER CODE APPEARS ON WILL CHANGE. HOWEVER, THE LINE NUMBER IN THE QUESTIONS DO NOT. HENCE, ONCE YOU START THE EXERCISES LINE NUMBERS DESCRIBED IN THE QUESTIONS WILL NO LONGER MATCH THE CODE. PLEASE READ ALL THE QUESTIONS FIRST.
 
 /////////////////////////////////
 */
import UIKit
/*:
 
 //////////////////////////////////
 //// EXERCISE ONE
 //////////////////////////////////
 
 We will use an `if-else-if-else` construct in this exercise.
 
* Change the value of `num` on line 23 several times to ensure you understand how `if-else-if-else` works.
 */

var num = 5

if num == 3{
    print("no")
}
else if num == 5 {
    print("Yes")
}
else{
    print("No idea")
}

/*:
 
 //////////////////////////////////
 //// EXERCISE TWO
 //////////////////////////////////
 
 * This code will create 2 random numbers between 1 and 10 (lines 47 and 49)
 * The first random number is the `numberToGuess` (line 47)
 * The second random number is the `guessedNumber` (we can't enter input in a Playground like this one) (line 49)
 * Write an `if-else` statement to check if the `guessedNumber` is the same as the `numberToGuess`.
 * Your program should output a congratulations message when the guess is correct or an apology if it is incorrect.
 */
let numberToGuess = Int.random(in: 1 ... 10)
print("Random generated numberToGuess is: \(numberToGuess)")
var guessedNumber = Int.random(in: 1 ... 10)
print("Random generated guessedNumber is: \(guessedNumber)")

if guessedNumber == numberToGuess{
    print("Congratulations! You got it Right!")
}
else{
    print("Sorry! You got the answer wrong...")
}

/*:
 
 //////////////////////////////////
 //// EXERCISE THREE
 //////////////////////////////////
 
 * This code will create 1 random number between 1 and 10 (line 65)
 * The random number is  `theNumberToGuess` (line 65)
 * Write a `switch` statement to discover what the `theNumberToGuess` is.
 * Your program should output a message stating a congratulations message when the switch statement matches the `theNumberToGuess`.
 */
let theNumberToGuess = Int.random(in: 1 ... 10)
print("Random generated numberToGuess is: \(theNumberToGuess)")

switch theNumberToGuess {
default:
    print("Congratulations! You got it Right!")
}
/*:
 
 //////////////////////////////////
 //// EXERCISE FOUR
 //////////////////////////////////
 
 * Create a `Dictionary` that has a country's name as the `Key` and the country's latitude and longitude for the `Value`.
 * For the `Value`, you will need to store 2 values: one for latitude, one for longitude.
 Hint, you will need to use the other type of collection we learnt about to store the 2 values.
 
 For example: Australia has a latitude of 25.2744, longitude of 133.7751
 * Extract and print only the latitude `Value` from the `Key`
 * Add another line of code to print both `Value`s of the `Key`
 
 */

// Start your code on the next line.

var country : [String: [Double]] = ["Australia":[25.2744, 133.7751]]
if let aus = country["Australia"]{
    print(aus[0])
    print(aus)
}
