//
//  SecondViewController.swift
//  Do It
//
//  Created by Chatterjee, Snigdhaman on 26/12/15.
//  Copyright © 2015 Chatterjee, Snigdhaman. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var itemTextField: UITextField!
    
    
    @IBAction func addItemButton(sender: AnyObject) {
        
        if !(itemTextField.text!.isEmpty) {
            toDoList.append(itemTextField.text!)
            itemTextField.text = ""
            NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.itemTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true

    }

}

