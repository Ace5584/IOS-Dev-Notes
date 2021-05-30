import UIKit

struct Car{
    static var legalLimit = 120
    var kph: Double = 0
    
    init(kph: Double){
        self.kph = kph
    }
    init(mph: Double){
        self.kph = mph * 1.6
    }
    
    mutating func reset(){
        self.kph = 0
    }
    func printLimit(){
        print(Car.legalLimit)
    }
}

var car1 = Car(mph: 60)
print(car1.kph)
car1.printLimit()
car1.reset()
print(car1.kph)
