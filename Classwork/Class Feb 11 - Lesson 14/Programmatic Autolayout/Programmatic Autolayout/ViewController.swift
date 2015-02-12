//
//  ViewController.swift
//  Programmatic Autolayout
//
//  Created by Lisa A Clark on 2/11/15.
//  Copyright (c) 2015 Lisa A Clark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var head: UIView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        var body = UIView()
        body.backgroundColor=UIColor.greenColor()
        self.view.addSubview(body)
        body.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let bodyWidth = NSLayoutConstraint(
            item: body,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Width,
            multiplier: 0.5,
            constant: 0.0)
        
        let bodyVerticalPosition = NSLayoutConstraint(
            item: body,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1.0,
            constant: 0.0)
        
        let bodyHorizontalPosition = NSLayoutConstraint(
            item: body,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1.0,
            constant: self.head.frame.width/4)
        
        let bodyHeight = NSLayoutConstraint(
            item: body,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Height,
            multiplier: 2.0,
            constant: 100
        )
        
        //You can also code bodyHeight in like this:
//        let bodyHeight = NSLayoutConstraint(
//            item: body,
//            attribute: NSLayoutAttribute.Top,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: nil,
//            attribute: NSLayoutAttribute.Bottom,
//            multiplier: 1,
//            constant: self.view.frame.height * 2)
    
       
        
        self.view.addConstraints([bodyWidth, bodyVerticalPosition, bodyHorizontalPosition, bodyHeight])
        
        var leftArm = UIView()
        leftArm.backgroundColor = UIColor.blackColor()
        self.view.addSubview(leftArm)
        
        leftArm.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let leftArmHeight = NSLayoutConstraint(
            item: leftArm,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 30)
        
        let leftArmTop = NSLayoutConstraint(
            item: leftArm,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0.0)
        
        let leftArmLeading = NSLayoutConstraint(
            item: leftArm,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1,
            constant: 20.0)
        
        let leftArmTrailing = NSLayoutConstraint(  item: leftArm,
            attribute: NSLayoutAttribute.Trailing,
            relatedBy: NSLayoutRelation.Equal,
            toItem: body,
            attribute: NSLayoutAttribute.Left,
            multiplier: 1,
            constant: 0.0)
        
        self.view.addConstraints([leftArmHeight, leftArmTop, leftArmLeading, leftArmTrailing])
        
        var rightArm = UIView()
        rightArm.backgroundColor = UIColor.blackColor()
        self.view.addSubview(rightArm)
        
        rightArm.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let rightArmHeight = NSLayoutConstraint(
            item: rightArm,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 30)
        
        let rightArmTop = NSLayoutConstraint(
            item: rightArm,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0.0)
        
        let rightArmLeading = NSLayoutConstraint(
            item: rightArm,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: body,
            attribute: NSLayoutAttribute.Right,
            multiplier: 1,
            constant: 0.0)
        
        let rightArmTrailing = NSLayoutConstraint(
            item: rightArm,
            attribute: NSLayoutAttribute.Trailing,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Right,
            multiplier: 1,
            constant: -20.0)
        
        self.view.addConstraints([rightArmHeight, rightArmTop, rightArmLeading, rightArmTrailing])
      
//        var leftLeg = UIView()
//        leftLeg.backgroundColor = UIColor.blackColor()
//        self.view.addSubview(leftLeg)
//        
//        leftLeg.setTranslatesAutoresizingMaskIntoConstraints(false)
//        
//        leftLegHeight = NSLayoutConstraint(
//            item: leftLeg,
//            attribute: NSLayoutAttribute.Height,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: nil,
//            attribute: NSLayoutAttribute.Height,
//            multiplier: 1,
//            constant: 40)
//        
//        leftLegWidth = NSLayoutConstraint(
//            item: leftLeg,
//            attribute: NSLayoutAttribute.Width,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: body,
//            attribute: NSLayoutAttribute.Width,
//            multiplier: 1,
//            constant: 0)
//        
//        leftLegBottom = NSLayoutConstraint(
//                item: leftLeg,
//                attribute: NSLayoutAttribute.Bottom,
//                relatedBy: NSLayoutRelation.Equal,
//                toItem: self.view,
//                attribute: NSLayoutAttribute.Bottom,
//                multiplier: 1,
//                constant: 0)
//        
//        leftLegTrailing = NSLayoutConstraint(
//            item: leftLeg,
//            attribute: NSLayoutAttribute.Height,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: nil,
//            attribute: NSLayoutAttribute.Width,
//            multiplier: 1,
//            constant: 40)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

