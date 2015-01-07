// Playground - noun: a place where people can play

/*
This is a comment black
*/

//This is also a comment

//Strings are usually presented in double quotes
"This is a string"


//Integers are whole numbers
5
8
100000000000


//Doubles and floats Doubles are 64 bit, Floats are 32 bits.  Swift automatically sets it as a double
54.76

//Boolean
true
false


//Arrays and Ditionaries to be covered later - collections of data


//Variable: inferred  Variables are mutable
var myVariable = "Hello World"
println(myVariable)

var mySecondVariable: String = "Hello world again"
mySecondVariable = "10"
mySecondVariable = "hello"

var x = 10

var y = 4

x + y
x*y
x/y

//No remainder because inferred type of variables x and y is integer

//Return only the remainder
x % y
10 % 10


y = 20
println (y)

let z = 200
y = z

//Constants.  Constants are immutable.  Cannot change them.

let myName = "Tedi"

//myName = "John" will return an error because constants are immutable/cannot be changed.

//var amIHere: String? = "yes"
//println(amIHere!)

var amIHere: String?
println(amIHere)

/*********** Control Flow **********/
// Conditionals

//‘Else if’ allows you to set up multiple conditions to check for//'Else' is the default, if none of the else if conditions are met


if y == 200 {
    println("5 is 5")
    println("Another line of code")
}

var myAge = 21
if myAge < 21 {
        println("You can't get in!")
}else if myAge == 21 {
    println("Free drinks")
}else if myAge > 21 && myAge < 25 {
    println("You can drink, but you can't drive a car")
}else {
    println("You CAN party!")
}

// != means not equal to

//For Loops
// For initialization; condition; increment

for var i = 1; i < 5; ++i {
    println("code is running \(i)")
}


//For In Loop (another way of incrementing using elipses)

for index in 1...5 {
    println(index)
}

//While Loop - while a condition is true, we execute code

var k = 1
while  k < 10 {
    println("counting")
    ++k
}

println(k)




import UIKit


