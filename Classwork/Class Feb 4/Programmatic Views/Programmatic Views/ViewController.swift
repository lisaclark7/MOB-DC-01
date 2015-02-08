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
        var myView = UIView(frame: CGRect(x: 50, y: 50, width: 200, height: 200))
        myView.backgroundColor = UIColor.redColor()
        self.view.addSubview(myView)
    }

   

}

