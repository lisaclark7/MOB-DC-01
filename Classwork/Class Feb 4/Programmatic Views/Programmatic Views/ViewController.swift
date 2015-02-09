//
//  ViewController.swift
//  Programmatic Views
//
//  Created by Lisa A Clark on 2/4/15.
//  Copyright (c) 2015 Lisa A Clark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var redBox = UIView(frame: CGRect(x: 50, y: 50, width: 200, height: 200))
        redBox.backgroundColor = UIColor.redColor()
        redBox.autoresizingMask = UIViewAutoresizing.FlexibleLeftMargin | UIViewAutoresizing.FlexibleBottomMargin
        self.view.addSubview(redBox)
        
        var redBoxLabel = UILabel(frame: CGRect(x: 20, y: 20, width: 100, height: 30))
        
        redBoxLabel.text = "Hello World!"
        redBoxLabel.backgroundColor = UIColor.blackColor()
        redBoxLabel.textColor = UIColor.whiteColor()
        redBoxLabel.textAlignment = .Center
        redBox.addSubview(redBoxLabel)
    
        var actionBtn = UIButton(frame: CGRect(x: 0, y: 300, width: self.view.frame.width, height: 30))
        actionBtn.setTitle("Click Me!", forState: .Normal)
        actionBtn.addTarget(self, action: "pressedCodedBtn:", forControlEvents: .TouchUpInside)
        actionBtn.backgroundColor = UIColor.blueColor()
        actionBtn.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        self.view.addSubview(actionBtn)
        
        var kaylaImage = UIImage(named: "IMG_2473.PNG")
        //above this is just a reference to the actual image.  basically declaring 
        //the image is there.  Need UIImageView to make an image out of the file.  
        //UIImageView must contains the image.
        var kaylaImageView = UIImageView(image: kaylaImage)
        kaylaImageView.frame = CGRect(x: 25, y: 350, width: kaylaImage!.size.width/3, height: kaylaImage!.size.height/3)
        kaylaImageView.autoresizingMask = UIViewAutoresizing.FlexibleTopMargin
        self.view.addSubview(kaylaImageView)
        
    
    }

    func pressedCodedBtn (sender: UIButton){
        println("Hello World")
        sender.removeFromSuperview()
    }
   

}

