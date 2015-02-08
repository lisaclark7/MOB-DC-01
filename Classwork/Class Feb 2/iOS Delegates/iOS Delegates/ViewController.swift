//
//  ViewController.swift
//  iOS Delegates
//
//  Created by Lisa A Clark on 2/2/15.
//  Copyright (c) 2015 Lisa A Clark. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    var gaCampuses: [String] = ["DC", "MD", "NY", "LA"]

    @IBOutlet weak var stuffTextField: UITextField!
   
    @IBOutlet weak var campusesTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Add delegate for text field
        //1: add UITextFieldDelegate protocol
        //2: connect Text field outlet
        //3: Tie textfield.delegate = self
        //4: Add the text field method
        
        
        if gaCampuses.isEmpty {
            println("Your table view is empty")
            campusesTable.hidden = true
        }
       
    }

        stuffTextField.delegate = self
     // Do any additional setup after loading the view, typically from a nib.
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        println("Return key pressed!")
        stuffTextField.resignFirstResponder()
        return true
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.gaCampuses.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier")as? UITableViewCell ?? UITableViewCell(style: .Default, reuseIdentifier: "CellIdentifier")
        
        //Sets each cell to equal each item in the array
        if indexPath.row % 2 == 0 {
            //Set cell background color
            cell.backgroundColor = UIColor.redColor()
            //Set text color
            cell.textLabel?.textColor = UIColor.whiteColor()
        }
        
        return cell
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



