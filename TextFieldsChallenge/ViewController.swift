//
//  ViewController.swift
//  TextFieldsChallenge
//
//  Created by Sanjib Ahmad on 4/20/15.
//  Copyright (c) 2015 Object Coder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var zipTextField: UITextField!
    @IBOutlet weak var cashTextField: UITextField!
    @IBOutlet weak var lockableTextField: UITextField!
    @IBOutlet weak var lockSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        zipTextField.placeholder = "Type your zip code"
        zipTextField.clearButtonMode = UITextFieldViewMode.Always
        zipTextField.keyboardType = UIKeyboardType.NumberPad
        
        cashTextField.placeholder = "Type your $ amount"
        cashTextField.clearButtonMode = UITextFieldViewMode.Always
        cashTextField.keyboardType = UIKeyboardType.NumberPad
        
        lockableTextField.placeholder = "Make sure switch is ON to type text"
        lockableTextField.clearButtonMode = UITextFieldViewMode.Always
        lockableTextField.keyboardType = UIKeyboardType.Default
        
        lockSwitch.setOn(false, animated: false)
    }
    
    @IBAction func toggleLockSwitch(sender: UISwitch) {
        
    }

}

