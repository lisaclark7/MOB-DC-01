//
//  ViewController.swift
//  ViewControllers Lesson 8 - Jan 21
//
//  Created by Lisa A Clark on 2/6/15.
//  Copyright (c) 2015 Lisa A Clark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySquare: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
        @IBAction func swipeSquareRight(sender: UISwipeGestureRecognizer) {
        
        UIView.animateWithDuration(1.5, animations: {
        self.mySquare.backgroundColor = UIColor.yellowColor()
        self.mySquare.alpha = 0.5
            
        })
    }
    
    @IBAction func swipeSquareLeft(sender: UISwipeGestureRecognizer) {
        
        UIView.animateWithDuration(1.5, animations: {
            self.mySquare.backgroundColor = UIColor.yellowColor()
            self.mySquare.alpha = 0.5
            
        })
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

