//
//  CustomViewTextField.swift
//  AppDatXe
//
//  Created by DC on 3/9/19.
//  Copyright © 2019 Ngo Dang Chac. All rights reserved.
//

import UIKit

class CustomViewTextField: UIView {
    
    @IBOutlet var containerView: UIView!
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var textField: UITextField!
    
    var _cornerRadius: CGFloat = 0.0
    var _cornerUseMulti: Bool = false
    var _circleView: Bool = false
    var _borderWidth: CGFloat = 0.0
    var _borderColor: UIColor = UIColor.clear
    
    var _image: UIImage!
    var _marginSide: CGFloat = 16
    var _iconMulti: CGFloat = 0.8
    var _spaceBetween: CGFloat = 16
    var _textSize: CGFloat = 14
    var _placeHolderText: String = ""
    var _placeHolder = ""
    var _textColor = UIColor.black
    var _clearWhenBegin : Bool = true
    
    @IBInspectable
    var textSize: CGFloat {
        set (newValue) {
            _textSize = newValue
            textField.font = textField.font?.withSize(_textSize)
        } get {
            return _textSize
        }
    }
    
    @IBInspectable
    var clearWhenBegin: Bool {
        set (newValue) {
            _clearWhenBegin = newValue
            textField.clearsOnBeginEditing = _clearWhenBegin
        } get {
            return _clearWhenBegin
        }
    }
    
    @IBInspectable
    var placeHolderText: String {
        set (newValue) {
            _placeHolderText = newValue
            textField.placeholder = _placeHolderText
        } get {
            return _placeHolderText
        }
    }
    @IBInspectable
    var placeHolder: String {
        set (newValue) {
            _placeHolder = newValue
            textField.placeholder = _placeHolder
        } get {
            return _placeHolder
        }
    }
    @IBInspectable
    var textColor: UIColor {
        set (newValue) {
            _textColor = newValue
            textField.textColor = _textColor
        } get {
            return _textColor
        }
    }

    @IBInspectable
    var marginSide: CGFloat {
        set (newValue) {
            _marginSide = newValue
            iconImage.heightAnchor.constraint(equalTo: self.heightAnchor, constant: -(2 * _marginSide)).isActive = true
            textField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -_marginSide).isActive = true
        } get {
            return _marginSide
        }
    }
    
    @IBInspectable
    var spaceBetween: CGFloat {
        set (newValue) {
            _spaceBetween = newValue
            iconImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: _spaceBetween).isActive = true
            textField.leadingAnchor.constraint(equalTo: iconImage.trailingAnchor, constant: _spaceBetween).isActive = true
            
        } get {
            return _spaceBetween
        }
    }
    
    @IBInspectable
    var iconMulti: CGFloat {
        set (newValue) {
            _iconMulti = newValue
        } get {
            return _iconMulti
        }
    }
    
    @IBInspectable
    var image: UIImage {
        set (newValue) {
            _image = newValue
            iconImage.image = _image
        } get {
            return _image
        }
    }
    
    @IBInspectable
    var cornerRadius: CGFloat {
        set (newValue) {
            _cornerRadius = newValue
            if (!_cornerUseMulti) {
                self.layer.cornerRadius = _cornerRadius
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
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }

    func setupView(){
        Bundle.main.loadNibNamed("CustomViewTextField", owner: self, options: nil)
        addSubview(containerView)
        containerView.frame = self.bounds
        containerView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        stackView.spacing = _spaceBetween
//        stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: _marginSide).isActive = true
//        stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -_marginSide).isActive = true
//        iconImage.topAnchor.constraint(equalTo: self.stackView.topAnchor, constant: _marginSide).isActive = true
//        iconImage.bottomAnchor.constraint(equalTo: self.stackView.bottomAnchor, constant: -_marginSide).isActive = true
//        iconImage.image = _image
    }
    
}
