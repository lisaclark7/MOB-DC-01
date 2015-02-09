//
//  ViewController.swift
//  Drawing In Code Part 1 Class Exercise
//
//  Created by Lisa A Clark on 2/9/15.
//  Copyright (c) 2015 Lisa A Clark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        var logoImage = UIImage(named: "XLME Logo.png")
        var logoImageView = UIImageView(image: logoImage)
        logoImageView.frame = CGRect(x: 30, y: 30, width: logoImage!.size.width/1.5, height: logoImage!.size.width/1.5)
        self.view.addSubview(logoImageView)
        
    
        var title = UILabel(frame: CGRect(x: 30, y: 215, width: 100, height: 100))
        title.text = "Log In"
        self.view.addSubview(title)
        

    
        var userName = UILabel(frame: CGRect(x: 30, y: 300, width: 100, height: 30))
        userName.text = "Username"
        self.view.addSubview(userName)
        
        var userNameField = UITextField(frame: CGRect(x: 30, y: 420, width: self.view.frame.width, height: 30))
        userNameField.backgroundColor = UIColor.orangeColor()   
        self.view.addSubview(userNameField)
        
        
        var password = UILabel(frame: CGRect(x: 30, y: 350, width: 100, height: 30))
        password.text = "Password"
        self.view.addSubview(password)
        
        var passwordField = UITextField(frame: CGRect(x: 30, y: 380, width: self.view.frame.width, height: 30))
        passwordField.backgroundColor = UIColor.orangeColor()
        self.view.addSubview(passwordField)
        
        
        var logInBtn = UIButton(frame: CGRect(x: 50, y: 450, width: self.view.frame.width, height: 30))
        logInBtn.setTitle("Click Here", forState: .Normal)
        logInBtn.titleColorForState(.Normal)
        logInBtn.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        logInBtn.backgroundColor = UIColor.orangeColor()
        self.view.addSubview(logInBtn)
        
    }
    
    func buttonPressed(sender: UIButton) {
        println("Thank you")
    }


}

