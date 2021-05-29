import UIKit

struct Player{
    var name: String
    var age: Int
    var health: Int
    func displayStatus(){
        print("\(name) is \(age) years old and has \(health) health")
    }
}

var Peter = Player(name: "Peter Baker", age: 19, health: 100)

Peter.displayStatus()
