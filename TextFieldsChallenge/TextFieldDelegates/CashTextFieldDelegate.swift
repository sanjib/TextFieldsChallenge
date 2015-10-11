//
//  CashTextFieldDelegate.swift
//  TextFieldsChallenge
//
//  Created by Sanjib Ahmad on 4/20/15.
//  Copyright (c) 2015 Object Coder. All rights reserved.
//

import Foundation
import UIKit

class CashTextFieldDelegate: NSObject, UITextFieldDelegate {
    func textFieldDidBeginEditing(textField: UITextField) {
        if textField.text == "" {
            textField.text = "$0.00"
        }
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        // checking for range.length==1 to allow backspace (delete) key to work
        if Int(string) != nil || range.length == 1 {
            let numberFormatter = NSNumberFormatter()
            numberFormatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
            numberFormatter.locale = NSLocale(localeIdentifier: "en_US")
            
            var newText = textField.text! as NSString
            newText = newText.stringByReplacingCharactersInRange(range, withString: string)
            
            newText = newText.stringByReplacingOccurrencesOfString("$", withString: "")
            newText = newText.stringByReplacingOccurrencesOfString(".", withString: "")
            newText = newText.stringByReplacingOccurrencesOfString(",", withString: "")
            
            let newNumber = Double(newText.doubleValue / 100)
            textField.text = numberFormatter.stringFromNumber(newNumber)
            
            return false
        }
        return false
    }
}