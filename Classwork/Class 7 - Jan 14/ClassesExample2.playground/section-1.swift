// Playground - noun: a place where people can play

import UIKit




class Animal {
    var species: String = ""
    var name: String = ""
    
    func stringRepresentation() ->String {
        return ("The animal is a \(self.species), its name is \(self.name)")
}

    func printAnimalName(animal: Animal) {
        println("The animal is a \(self.species), its name is \(self.name)")
}

}
var doggie = Animal()
doggie.name = "Ena"
doggie.species = "dog"
printAnimalName(doggie)
