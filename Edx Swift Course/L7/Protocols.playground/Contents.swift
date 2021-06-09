class Car: CustomStringConvertible, Equatable{
    var manufacture: String
    var carName: String
    var yearOfManufacturing: Int
    
    init(manufacture: String, carName: String, yearOfManufacturing: Int) {
        self.manufacture = manufacture
        self.carName = carName
        self.yearOfManufacturing = yearOfManufacturing
    }
    
    var description: String {
        return "The \(carName) is made by \(manufacture) and was manufactured in \(yearOfManufacturing)"
    }
    
    static func == (carOne: Car, carTwo: Car) -> Bool{
        let same = carOne.carName == carTwo.carName && carOne.manufacture == carTwo.manufacture && carOne.yearOfManufacturing == carTwo.yearOfManufacturing
        return same
    }
}

var myFirstCar = Car(manufacture: "Toyota", carName: "Corolla", yearOfManufacturing: 2017)
var mySecondCar = Car(manufacture: "BMW", carName: "X3", yearOfManufacturing: 2019)
print(myFirstCar)

if myFirstCar == mySecondCar {
    print("Same Car")
}
else{
    print("Different Car")
}
