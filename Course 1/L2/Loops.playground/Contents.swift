import UIKit

// For Loop

// Number
for num in 10...15{
    print(num)
}

// Array
var lectures = ["David", "Tristan", "Steve"]
for lecture in lectures{
    print("Lecture is: \(lecture)")
}

// Dictionary
var ages = ["David":28, "Tristan":22, "Steve":45]
for person in ages{
    print(person)
}
for person in ages{
    print(person.key)
}
for person in ages{
    print(person.value)
}

// While Loop
var myScore = 5
while myScore < 10{
    print("Not there yet, go again?")
    myScore += 1
}

var points = 5
var numOfServes = 1
while points < 50 && numOfServes < 3{
    print("Playton, point = \(points)")
    points = points * 2
    numOfServes += 1
}
