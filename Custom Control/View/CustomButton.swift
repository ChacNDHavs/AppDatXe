//
//  CornerButton.swift
//  AppDatXe
//
//  Created by DC on 3/7/19.
//  Copyright © 2019 Ngo Dang Chac. All rights reserved.
//

import UIKit

@IBDesignable
class CustomButton: UIButton {
    var _cornerRadius: CGFloat = 0.0
    var _cornerUseMulti: Bool = false
    var _circleView: Bool = false
    var _borderWidth: CGFloat = 0.0
    var _borderColor: UIColor = UIColor.clear
    
    @IBInspectable
    var cornerRadius: CGFloat {
        set (newValue) {
            _cornerRadius = newValue
            if (!_cornerUseMulti) {
                layer.cornerRadius = _cornerRadius
            }
        } get {
            return _cornerRadius
        }
    }
    
    @IBInspectable
    var cornerUseMulti: Bool {
        set (newValue) {
            _cornerUseMulti = newValue
            if (_cornerUseMulti && !circleView) {
                layer.cornerRadius = UIScreen.main.bounds.width / 40
            }
        } get {
            return _cornerUseMulti
        }
    }
    
    
    @IBInspectable
    var circleView: Bool {
        set (newValue) {
            if (newValue) {
                layer.cornerRadius = self.frame.height / 2
            }
        } get {
            return _circleView
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat {
        set (newValue) {
            _borderWidth = newValue
            layer.borderWidth = newValue
        }
        get {
            return _borderWidth
        }
    }
    
    @IBInspectable
    var borderColor: UIColor {
        set (newValue) {
            _borderColor = newValue
            layer.borderColor = _borderColor.cgColor
        } get {
            return _borderColor
        }
    }
    
}
