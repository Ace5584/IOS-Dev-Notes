import UIKit

var nameAge = ["David":28, "Tristan":23]

if let davidAge = nameAge["David"]{
    print(davidAge)
    nameAge["David"] = 42
}

if let davidNewAge = nameAge["David"]{
    print(davidNewAge)
}

nameAge.removeValue(forKey: "David")
print(nameAge)
