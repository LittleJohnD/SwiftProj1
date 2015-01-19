//
//  ViewController.swift
//  SwiftProj1
//
//  Created by John Dyer on 14/01/2015.
//  Copyright (c) 2015 John Dyer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var greetLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeGreeting(sender: AnyObject) {
        var nameString = String()
        nameString = self.nameField.text
        if (nameString.isEmpty) {
            nameString = "World"
        }
        self.nameField.text = ""
        self.greetLabel.text = "Hello, " + nameString
    }
    
    func textFieldShouldReturn(nameField: UITextField!) -> Bool {
        changeGreeting(nameField)
        nameField.resignFirstResponder()
        return true
    }
}

