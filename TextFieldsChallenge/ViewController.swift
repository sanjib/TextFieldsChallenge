//
//  ViewController.swift
//  TextFieldsChallenge
//
//  Created by Sanjib Ahmad on 4/20/15.
//  Copyright (c) 2015 Object Coder. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var zipTextField: UITextField!
    @IBOutlet weak var cashTextField: UITextField!
    @IBOutlet weak var lockableTextField: UITextField!
    @IBOutlet weak var lockSwitch: UISwitch!
    
    let zipTextFieldDelegate = ZipTextFieldDelegate()
    let cashTextFieldDelegate = CashTextFieldDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        zipTextField.delegate = zipTextFieldDelegate
        cashTextField.delegate = cashTextFieldDelegate
        lockableTextField.delegate = self
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        zipTextField.placeholder = "Type your zip code"
        zipTextField.clearButtonMode = UITextFieldViewMode.Always
        zipTextField.keyboardType = UIKeyboardType.NumberPad
        
        cashTextField.placeholder = "Type your $ amount"
        cashTextField.clearButtonMode = UITextFieldViewMode.Always
        cashTextField.keyboardType = UIKeyboardType.DecimalPad
        
        lockableTextField.placeholder = "Make sure switch is ON to type text"
        lockableTextField.clearButtonMode = UITextFieldViewMode.Always
        lockableTextField.keyboardType = UIKeyboardType.Default
        
        lockSwitch.setOn(false, animated: false)
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        return lockSwitch.on
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        return lockSwitch.on
    }
    
    func textFieldShouldClear(textField: UITextField) -> Bool {
        return lockSwitch.on
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if (lockSwitch.on) {
            lockableTextField.resignFirstResponder()
            lockSwitch.setOn(false, animated: true)
            return true
        } else {
            return false
        }
    }

}

