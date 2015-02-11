//
//  SecondViewController.swift
//  Autolayout
//
//  Created by Lisa A Clark on 2/9/15.
//  Copyright (c) 2015 Lisa A Clark. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBAction func swipeRighOnMouth(sender: UISwipeGestureRecognizer) {
    
        UIView.animateWithDuration(0.5, animations: { self.robotMouth.backgroundColor = UIColor.blueColor()
        })
        
    }
    
    
    
    @IBOutlet weak var robotMouth: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
