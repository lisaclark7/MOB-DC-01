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
   
    
        var body = UIView()
        var leftArm = UIView()
        var leftLeg = UIView()
        var rightArm = UIView()
        var rightLeg = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createBody()
        createLeftArm()
        createLeftLeg()
        createRightArm()
        createRightLeg()
        
        UIView.animateWithDuration(1, animations: {
            self.view.layoutIfNeeded()
        })
    }
    
        func createBody() {
        body.backgroundColor = UIColor.greenColor()
        self.view.addSubview(body)
        body.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let bodyWidth = NSLayoutConstraint(
            item: self.body,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Width,
            multiplier: 0.5,
            constant: 0.0)
        
        let bodyVerticalPosition = NSLayoutConstraint(
            item: self.body,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1.0,
            constant: 0.0)
        
        let bodyHorizontalPosition = NSLayoutConstraint(
            item: self.body,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1.0,
            constant: self.head.frame.width/4)
      
        
        //You can also code bodyHeight in like this:
//        let bodyHeight = NSLayoutConstraint(
//            item: self.body,
//            attribute: NSLayoutAttribute.Top,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: nil,
//            attribute: NSLayoutAttribute.Bottom,
//            multiplier: 1,
//            constant: self.view.frame.height * 2)
        
        self.view.addConstraints([bodyWidth, bodyVerticalPosition, bodyHorizontalPosition])
        }
        
        func createLeftArm() {
                
            leftArm.backgroundColor = UIColor.blackColor()
            self.view.addSubview(leftArm)
            
            leftArm.setTranslatesAutoresizingMaskIntoConstraints(false)
            
            let leftArmHeight = NSLayoutConstraint(
                item: self.leftArm,
                attribute: NSLayoutAttribute.Height,
                relatedBy: NSLayoutRelation.Equal,
                toItem: nil,
                attribute: NSLayoutAttribute.Height,
                multiplier: 1,
                constant: 30)
            
            let leftArmTop = NSLayoutConstraint(
                item: self.leftArm,
                attribute: NSLayoutAttribute.Top,
                relatedBy: NSLayoutRelation.Equal,
                toItem: self.head,
                attribute: NSLayoutAttribute.Bottom,
                multiplier: 1,
                constant: 0.0)
            
            let leftArmLeading = NSLayoutConstraint(
                item: self.leftArm,
                attribute: NSLayoutAttribute.Leading,
                relatedBy: NSLayoutRelation.Equal,
                toItem: self.view,
                attribute: NSLayoutAttribute.Leading,
                multiplier: 1,
                constant: 20.0)
            
            let leftArmTrailing = NSLayoutConstraint(
                item: self.leftArm,
                attribute: NSLayoutAttribute.Trailing,
                relatedBy: NSLayoutRelation.Equal,
                toItem: body,
                attribute: NSLayoutAttribute.Left,
                multiplier: 1,
                constant: 0.0)
            
            self.view.addConstraints([leftArmHeight, leftArmTop, leftArmLeading, leftArmTrailing])
        }
        
        func createRightArm() {
        rightArm.backgroundColor = UIColor.blackColor()
        self.view.addSubview(rightArm)
        
        rightArm.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let rightArmHeight = NSLayoutConstraint(
            item: self.rightArm,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 30)
        
        let rightArmTop = NSLayoutConstraint(
            item: self.rightArm,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0.0)
        
        let rightArmLeading = NSLayoutConstraint(
            item: self.rightArm,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: body,
            attribute: NSLayoutAttribute.Right,
            multiplier: 1,
            constant: 0.0)
        
        let rightArmTrailing = NSLayoutConstraint(
            item: self.rightArm,
            attribute: NSLayoutAttribute.Trailing,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Right,
            multiplier: 1,
            constant: -25.0)
        
        self.view.addConstraints([rightArmHeight, rightArmTop, rightArmLeading, rightArmTrailing])

        }
        
        func createLeftLeg() {
        leftLeg.backgroundColor = UIColor.blackColor()
        self.view.addSubview(leftLeg)
        
        leftLeg.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let leftLegHeight = NSLayoutConstraint(
            item: self.leftLeg,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 120)
        
        let leftLegWidth = NSLayoutConstraint(
            item: self.leftLeg,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.body,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1,
            constant: 0)
        
        let leftLegBottom = NSLayoutConstraint(
            item: self.leftLeg,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0)
        
        let leftLegTrailing = NSLayoutConstraint(
            item: self.leftLeg,
            attribute: NSLayoutAttribute.Trailing       ,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.body,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1,
            constant: 0)
            
        
        self.view.addConstraints([leftLegHeight, leftLegWidth, leftLegBottom, leftLegTrailing])
    }
        
    func createRightLeg() {
        rightLeg.backgroundColor = UIColor.blackColor()
        self.view.addSubview(rightLeg)
        
        rightLeg.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let rightLegHeight = NSLayoutConstraint(
            item: self.rightLeg,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 40)
        
        let rightLegWidth = NSLayoutConstraint(
            item: self.rightLeg,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: body,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1,
            constant: 0)
        
        let rightLegBottom = NSLayoutConstraint(
            item: self.rightLeg,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0)
        
        let rightLegTrailing = NSLayoutConstraint(
            item: self.rightLeg,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1,
            constant: 40)
        
        
        self.view.addConstraints([rightLegHeight, rightLegWidth, rightLegBottom, rightLegTrailing])
    }

   


}

