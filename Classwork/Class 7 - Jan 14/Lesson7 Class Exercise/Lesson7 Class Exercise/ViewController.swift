//
//  ViewController.swift
//  Lesson7 Class Exercise
//
//  Created by Lisa A Clark on 1/14/15.
//  Copyright (c) 2015 Lisa A Clark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
  
    @IBOutlet weak var animalInfo: UILabel!
    
    @IBOutlet weak var animalName: UITextField!
    
    @IBAction func catObject(sender: AnyObject) {
        var myCat = Animal()
        myCat.name = animalName.text
        myCat.species = "Cat"
        animalInfo.text = myCat.stringRepresentation()
        
    }
    
    
    @IBAction func dogObject(sender: AnyObject) {
        var myDog = Animal()
        myDog.name = animalName.text
        myDog.species = "Dog"
        animalInfo.text = myDog.stringRepresentation()
           }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    
    
    
}

