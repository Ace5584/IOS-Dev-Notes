import UIKit

class Animal{
    var animalName: String
    var numberOfLimbs: Int
    
    init(animalName: String, numberOfLimbs: Int) {
        self.animalName = animalName
        self.numberOfLimbs = numberOfLimbs
    }
    
    func makeNoise(){
        print("...")
    }
    

}

class Dog:Animal{
    var breed: String
    
    init(animalName: String, numberOfLimbs: Int, breed: String){
        self.breed = breed
        super.init(animalName: animalName, numberOfLimbs: numberOfLimbs)
    }
    
    override func makeNoise() {
        print("Woof!")
    }
}

class Cat:Animal{
    var breed: String
    
    init(animalName: String, numberOfLimbs: Int, breed: String){
        self.breed = breed
        super.init(animalName: animalName, numberOfLimbs: numberOfLimbs)
    }
    
    override func makeNoise() {
        print("Meow!")
    }
}

var cat = Cat(animalName: "Amy", numberOfLimbs: 4, breed: "Unknown")
cat.makeNoise()
