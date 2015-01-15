// Playground - noun: a place where people can play

import Foundation
import UIKit

var view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
//view is an instance of the existing class UIView.  creating a rectangle from the existing UIView class
view.backgroundColor = UIColor.purpleColor()




// Playground - noun: a place where people can play



class Animal {
    var species: String = ""
    var legs: Int
    init(legs: Int, name: String) {
        self.legs = legs
    }

    func speak() {
        println("AAAHHHHH!")
    }
}

class Dog: Animal {
//var legs = 4
    init(legs: Int) {

    }

    var isSmart = true
    override func speak() {
        println("Woof!")
    }
}

var doggie = Dog(legs: 4, name: "Ena")
doggie.legs
doggie.speak()
doggie.isSmart = false






//    func stringRepresentation() ->String {
//        var stringToReturn = "Species is \(self.species) & name is \(self.name)"
//        return stringToReturn
//}
//}
//the following function is outside of the class
//    func printAnimalName(animal: Animal) {
//        println("Animal's name is \(animal.name)")
//    }
//
//var doggie = Animal()
//    doggie.name = "ena"
//    printAnimalName(doggie)

