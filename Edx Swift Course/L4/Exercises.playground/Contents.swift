import UIKit

// Exercise 1
func calcSumDiff(firstNum: Int, secondNum: Int)  -> (Int, Int){
    return ((firstNum + secondNum), (firstNum - secondNum))
}

var (firstNum, secondNum) = calcSumDiff(firstNum: 5, secondNum: 10)
print(firstNum, secondNum)

// Exercise 2

struct Person{
    var name: String
    var age: Int
    var favFood: String
    var height: Int
    
    func sayHello(){
        print("Hello")
    }
    
    func printName(){
        print("My Name is \(self.name)")
    }
    
    func foodAndHeight() -> String{
        return "\(self.name) is \(self.height) tall and his/her favourite food is \(self.favFood)"
    }
}

var Peter = Person(name: "Peter Baker", age: 29, favFood: "Pizza", height: 178)
print(Peter.foodAndHeight())

// Exercise 3
class Animal {
    var animalName: String
    var numberOfLimbs: Int
    func makeNoise() {
        print("NOISE")
    }
    
    init(animalName: String, numberOfLimbs: Int) {
        self.animalName = animalName
        self.numberOfLimbs = numberOfLimbs
    }
}

class Snake:Animal {
    var poisonous: Bool
    var length: Int
    
    override func makeNoise(){
        print("Hiss")
    }
    
    init(poisonous: Bool, length: Int, animalName: String, numberOfLimbs: Int) {
        self.poisonous = poisonous
        self.length = length
        super.init(animalName: animalName, numberOfLimbs: numberOfLimbs)
    }
}

var snake = Snake(poisonous: true, length: 59, animalName: "Snaky", numberOfLimbs: 0)
snake.makeNoise()
