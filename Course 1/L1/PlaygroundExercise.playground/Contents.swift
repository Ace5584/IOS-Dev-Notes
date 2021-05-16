// APP1X: Build your very first iOS app
// Lesson 1: Starting App Development



import UIKit
/*:
 
 //////////////////////////////////
 //// EXERCISE ONE
 //////////////////////////////////
 
 * Modify the code below to create a variable called `name` and give it the value of your name;
 * Modify the code to print the value of the variable `name` out.
 * Run the code.
 * Now assign the same variable a new value of `7`. Run the code (if it is possible).
    * What happens?
 * Now assign the same variable a new value of `“7”`. Run the code (if it is possible).
    * What happens?
 * What is the difference between the results with `7` and `"7"`?
 */
//Write your code below
var name: String = "7"
print(name)

// Cannot run as '7' because it is a int but could run as '"7"' because it is
// a string

/*:
 
 //////////////////////////////////
 //// EXERCISE TWO
 //////////////////////////////////
 
 * Modify the code below to:
    * Create a variable called `age`, with a data type `Int` and assign it a value of `5`;
    * Create a variable called `lowScore` with a data type `Double` and assign it a value of `4.7`;
    * Now modify the `print()` statement to multiply `age` and `lowScore` together.
 * What happens?
 * Was it possible to run the code?
 * What does the error message mean?
 */
//Write your code below
var age: Int = 5
var lowScore: Double = 4.7
//print(lowScore * age)

// The error message means that it could not operate on different types of datatype
// It is not possible to run the code


/*:
 
 //////////////////////////////////
 //// EXERCISE THREE
 //////////////////////////////////

 Sometimes we need to perform maths operations using different data types and hence we then need to have the variables be the same data type.
 
 To do this we need to change data types (type cast) from one data type cast to another.
 To type cast from an `Int` to a `Double` we do it like this:
 `Double(variable_to_type_cast)`
 
 * Using the code from Exercise Two, rewrite the print statement so that the variable `age` is a double in the calculation.
    * HINT: use the example code above and change the `variable_to_type_cast` to a `Double`.
 
 * Now `print()` the value of the variable `age`.
 * Was it still with an `Int` value? (HINT: did the value have a decimal point?)
 This is because we didn't change the variable itself, we changed the value on the fly in the calculation. The variable itself is still an `Int`
 */
print(Double(age))
print(lowScore * Double(age))

// Age is converted to a double value and therefore the code from exercise two will work now
