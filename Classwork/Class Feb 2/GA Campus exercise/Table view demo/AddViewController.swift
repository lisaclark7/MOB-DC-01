//
//  AddViewController.swift
//  Table view demo
//
//  Created by Tedi Konda on 1/28/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import UIKit

protocol Campus {
    func addCampusToArray(campusName: String)
}

class AddViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var addTextBox: UITextField!
    
    @IBOutlet weak var errorMessage: UILabel!
    
    @IBOutlet weak var hiddenLabel: UILabel!
 
    //this is posting the notificatin
    @IBAction func pressPostButton(sender: AnyObject) {
        NSNotificationCenter.defaultCenter().postNotificationName("unhideHiddenLabels", object: nil)
    }
    
    }
    //1. In our "Add new" scene, check if the text field is empty
    //2. If the text field is empty, hide the keyboard, and display a label telling the user to fill something in
    //3. Bonus: Remove the table view controller and replace it with a table view
    
    
    var delegate: Campus?
    
    @IBAction func saveAndGoBack(sender: AnyObject) {
        self.delegate?.addCampusToArray(addTextBox.text)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addTextBox.delegate = self
        self.errorMessage.hidden = true
        self.hiddenLabel.hidden = true

        // Do any additional setup after loading the view.
        NSNotificationCenter.defaultCenter().addObserver(self,
            selector: "unhideCurrentLabels:",
            name: "unhideHiddenabels",
            object: nil)
        
        NSNotificationCenter.defaultCenter().
        addObserver(self,
            selector: "textHasChanged:",
            name: UITextFieldTextDidChangeNotification,
            oject: nil)

}
func textHasChanged(notification: NSNOtification){
    self.hiddenLabel.hidden = false
    println("Triggered unhideHiddenLabels notification")
    
}
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if self.addTextBox.text.isEmpty {
            println("Your text field is empty, enter something!")
            textField.resignFirstResponder()
           
        }
        return true
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
