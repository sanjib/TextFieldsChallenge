//
//  ZipUITextFieldDelegate.swift
//  TextFieldsChallenge
//
//  Created by Sanjib Ahmad on 4/20/15.
//  Copyright (c) 2015 Object Coder. All rights reserved.
//

import Foundation
import UIKit

class ZipTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        // checking for range.length==1 to allow backspace (delete) key to work
        if Int(string) != nil || range.length == 1 {
            var newText = textField.text! as NSString
            newText = newText.stringByReplacingCharactersInRange(range, withString: string)
            if newText.length < 6 {
                return true
            }
        }
        return false
    }
}