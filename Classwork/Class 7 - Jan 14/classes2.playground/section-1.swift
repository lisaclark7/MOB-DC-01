// Playground - noun: a place where people can play

import UIKit

class Vehicle {
    var wheels = 0
    var name:String = ""
    var color:String = ""
    var numberOfSeats = 0
    var numberOfAxels = 0
    
    //the car going is a function so this is a method
    func go() {
        println("Vroom vroom")
    }
    
    func inspectCar() {
        println("This car has \(self.numberOfSeats) seats and \(self.numberOfAxels) axels")
        
    }
    
    class func aboutVehicles() {
        println("Cars are awesome")
    }
    
    init() {
        println("init")
    }
}


var myCar = Vehicle()
myCar.wheels = 4
myCar.name = "Car"
myCar.color = "Green"
myCar.numberOfSeats = 4
myCar.numberOfAxels = 4


myCar.inspectCar()
Vehicle.aboutVehicles()
myCar

