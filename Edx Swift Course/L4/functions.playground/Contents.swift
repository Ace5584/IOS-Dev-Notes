import UIKit

// No Return No Parameters
func sayHello(){
    print("Hello")
}

// One Parameter No Return
func squareNumberPrint(number: Int){
    let result = number * number
    print(result)
}

// One Parameter One Return
func squareNumberReturn(number: Int) -> Int{
    return (number * number)
}

// Multiple Parameters one Return
func multiplyNumbers(num1: Int, num2: Int) -> Int{
    return (num1 * num2)
}

// Multiple Parameters Multiple Returns
func divideNumbers(num1: Int, num2: Int) -> (Double, Double){
    return (Double(num1/2), Double(num2/4))
}

sayHello()
squareNumberPrint(number: 9)
print(squareNumberReturn(number: 5))
print(multiplyNumbers(num1: 4, num2: 5))

let (div_2, div_4) = divideNumbers(num1: 4, num2: 8)
print(div_2, div_4)
