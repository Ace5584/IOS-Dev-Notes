import UIKit

// If Statements
var height: Int = 183
if height >= 190{
    print ("Wow, tall person!")
}
else {
    print ("Another short person!")
}

// Logical Operators

var studentAge: Int = 17
var birthMonth: String = "March"

if studentAge >= 10 || birthMonth == "March" {print("10 or older, born in March!")}
else{
    print("Perhaps less than 10")
    print("Also possibly not born in March!")
}

// Switch Statement

var numOfSibling = 2
switch numOfSibling{
case 0:
    print("Only Child")
case 1:
    print("A single sibling, possibly twins... Or not")
case 2:
    print("A brother or two, or, a sister or two")
default:
    print("Wow...")
}
