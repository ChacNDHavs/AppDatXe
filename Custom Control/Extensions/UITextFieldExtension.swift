//
//  UITextFieldExtension.swift
//  DerivativeIOS
//
//  Created by Dao Hai on 10/3/18.
//  Copyright © 2018 Ngo Dang Chac. All rights reserved.
//

import UIKit

extension UITextField {
    func useUnderline() {
        self.borderStyle = UITextField.BorderStyle.none
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor.black.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width,   width:  self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }

    func setBottomBorder(color:String)
    {
        self.borderStyle = UITextField.BorderStyle.none;
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor(hexString: color).cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width,   width:  self.frame.size.width, height: self.frame.size.height)

        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
    
//    func loadDropdownData(data: [String]) {
//        self.inputView = PickerView(pickerData: data, dropdownField: self)
//    }
    
    func applyCustomClearButton() {
        clearButtonMode = .never
        rightViewMode   = .whileEditing
        
        let clearButton = UIButton(frame: CGRect(x: 0, y: 0, width: 16, height: 16))
        clearButton.setImage(UIImage(named: "iconClear"), for: UIControl.State.normal)
        clearButton.contentMode = .scaleAspectFit
        clearButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(clearClicked(sender:))))
        rightView = clearButton
//        clearButton.heightAnchor.constraint(equalTo: clearButton.widthAnchor, multiplier: 1.0).isActive = true
//        clearButton.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.8)
    }
    
    @objc func clearClicked(sender:UIButton) {
        text = ""
    }
}
