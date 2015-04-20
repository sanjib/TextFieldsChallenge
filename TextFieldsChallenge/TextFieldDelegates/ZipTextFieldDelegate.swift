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
        var newText = textField.text as NSString
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
//        println(newText)
        if newText.length >= 6 {
            return false
        } else {
            return true
        }
    }
}