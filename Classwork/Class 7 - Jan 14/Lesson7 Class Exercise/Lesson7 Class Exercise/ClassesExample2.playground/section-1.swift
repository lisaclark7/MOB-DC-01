// Playground - noun: a place where people can play

import Foundation
import UIKit

var view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
//view is an instance of the existing class UIView.  creating a rectangle from the existing UIView class
view.backgroundColor = UIColor.purpleColor()




// Playground - noun: a place where people can play



class Animal {
    var species: String = ""
    var name: String = ""
    
    func stringRepresentation() ->String {
        return ("The animal is a \(self.species), its name is \(self.name)")
    }
    
    func printAnimalName(animal: Animal) {
        println("The animal is a \(self.species), its name is \(self.name)")
    }
    
    var doggie = Animal()
    doggie.name = "Ena"
    doggie.species = "dog"
    printAnimalName(doggie)





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

