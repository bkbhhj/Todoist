//
//  UIView extension.swift
//  todoist
//
//  Created by Павел Тимофеев on 06.06.2021.
//

import UIKit

extension UIView {
    func bindToKeyboard() {
        NotificationCenter.default.addObserver(self, selector: #selector(), name: NSNotification.Name.UIKeyboardWillChangeFrame, object: nil)
    }
    
    func keyboardWillChange(_ notification:NSNotification) {
        
    }
}
