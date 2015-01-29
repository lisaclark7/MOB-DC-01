// Playground - noun: a place where people can play

import UIKit

var myArray = [1, 4, 10, 15, 20]

var secondArray: [Int] = []
// we're declaring that we want an array of integers and the empty brackets, and it's an empty array.  The only way to declare an empty array is to first declare what type (integer or string)

var stringArray: [String] = []

myArray[2]
// Accessing the third element in the array called myArray

myArray.first
// accessing the first element of the array

myArray.last
// accessing the last element of the array

secondArray.append(20)
secondArray
// added the number 20 to the array called second Array.  Adds to the very end.
// append(20) is a method/function

myArray.insert(100, atIndex: 2)
// Inserts the number 100 as the third element in the array.

myArray.count
// tells you the length (number of elements) of the array

myArray.insert(50, atIndex: myArray.count - 1)
// inserts the number 50 in the second to last position of the array

myArray.isEmpty
stringArray.isEmpty
// determine if an array is empty

myArray.removeAtIndex(2)
//removes the third element in the array

myArray[1] = 40
// replaces whatever the second element of the array is with the number 40

for i in myArray {
    println(i)
}

for i in myArray {
    if i == 100 {
        println("Bingo")

    } else {
        println("the value is \(i)")
    }
}