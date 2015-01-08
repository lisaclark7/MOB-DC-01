// Playground - noun: a place where people can play

import UIKit

func hello() {
    println("Hello world")
}

hello()
//this is when the function runs, although the result appears above next to the code

func sum(firstNum: Int, secondNum: Int) {
  firstNum + secondNum
    secondNum - firstNum
    
}

sum(10, 10)
sum(20, 10)

func sum(firstNum: Int, secondNum: Int) -> Int{
    let newSum = firstNum + secondNum
    return newSum
}

//var x = sum(10, 20)
//var y = sum(x, 15)

//using function to perform the fibonacci sequence

//func fib(place: Int) -> Int {
//    var fibNum = place, current = 0, next = 1, result = 0
//    for index in 0..<fibNum {
//        //current value is 3
//        //temp value becomes 3
//        let tempVar = current
//        //current value becomes next(5)
//        current = next
//        //next value becomes old current (temporary) + new current (old next)
//        next = tempVar + current
//        result = tempVar
//        
//    }
//    return result
//}
//
//fib(8)
//fib(23)

func fib(fibPlace place: Int) -> Int {
    var fibNum = place, current = 0, next = 1, result = 0
    for index in 0..<fibNum {
        //current value is 3
        //temp value becomes 3
        let tempVar = current
        //current value becomes next(5)
        current = next
        //next value becomes old current (temporary) + new current (old next)
        next = tempVar + current
        result = tempVar
        
    }
    return result
}

fib(fibPlace: 8)
fib(fibPlace: 23)
