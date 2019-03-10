//
//  ViewExtension.swift
//  DerivativeIOS
//
//  Created by DC on 10/24/18.
//  Copyright © 2018 Ngo Dang Chac. All rights reserved.
//

import UIKit

enum GradientOrientation {
    case leftToRight
    case rightToLeft
}

extension UIView {
    
    func borderView(borderWidth : CGFloat, borderColor : UIColor) {
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
    }
    
    // OUTPUT 1
    func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: -1, height: 1)
        layer.shadowRadius = 1
        
        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
    // OUTPUT 2
    func dropShadow(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 1, scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offSet
        layer.shadowRadius = radius
        
        layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
    func gradientBack(color : UIColor, colorBack : UIColor, percent : CGFloat, orientation : GradientOrientation) {
        self.layoutIfNeeded()
        
        var subBackground : UIView!
        let colorBottom = color.withAlphaComponent(0.3).cgColor
        let gl = CAGradientLayer()
        
        if (orientation == .rightToLeft) {
            subBackground = UIView(frame: CGRect(x: 0,
                                                 y: 0,
                                                 width: self.layer.frame.width * (1 - percent),
                                                 height: self.frame.height))
            gl.colors = [colorBottom, color.cgColor]
            gl.startPoint = CGPoint(x: 0, y: 0.5)
            gl.endPoint = CGPoint(x: 0.9, y: 0.5)
        } else {
            subBackground = UIView(frame: CGRect(x: self.layer.frame.width * percent,
                                                 y: 0,
                                                 width: self.layer.frame.width * ( 1 - percent),
                                                 height: self.frame.height))
            gl.colors = [color.cgColor, colorBottom]
            gl.startPoint = CGPoint(x: 0, y: 0.5)
            gl.endPoint = CGPoint(x: 0.9, y: 0.5)
        }
        subBackground.backgroundColor = colorBack
        self.subviews.forEach({ $0.removeFromSuperview() })
        self.layer.sublayers?.forEach({$0.removeFromSuperlayer()})
        gl.frame = self.bounds
        self.layer.insertSublayer(gl, at: 0)
        self.addSubview(subBackground)
    }
    
    func gradientBack(colorBack : UIColor, color : UIColor, text : String, textColor : UIColor, maximum : CGFloat, value : CGFloat, orientation : GradientOrientation) {
        self.layoutIfNeeded()
        
        let percent : CGFloat = value / maximum
        //        self.layer.cornerRadius = 0.5 * self.frame.height
        self.clipsToBounds = true
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height))
        label.text = text
        label.textColor = textColor
        label.textAlignment = .center
        label.font = UIFont(name:"OpenSans-Regular", size: 14.0)
        
        var subBackground : UIView!
        let colorBottom = color.withAlphaComponent(0.3).cgColor
        let gl = CAGradientLayer()
        
        if (orientation == .rightToLeft) {
            subBackground = UIView(frame: CGRect(x: 0,
                                                 y: 0,
                                                 width: self.layer.frame.width * (1 - percent),
                                                 height: self.frame.height))
            gl.colors = [colorBottom, color.cgColor]
            gl.startPoint = CGPoint(x: 0, y: 0.5)
            gl.endPoint = CGPoint(x: 0.9, y: 0.5)
        } else {
            subBackground = UIView(frame: CGRect(x: self.layer.frame.width * percent,
                                                 y: 0,
                                                 width: self.layer.frame.width * ( 1 - percent),
                                                 height: self.frame.height))
            gl.colors = [color.cgColor, colorBottom]
            gl.startPoint = CGPoint(x: 0, y: 0.5)
            gl.endPoint = CGPoint(x: 0.9, y: 0.5)
        }
        
        self.backgroundColor = colorBack
        subBackground.backgroundColor = colorBack
        self.subviews.forEach({ $0.removeFromSuperview() })
        
        self.addSubview(subBackground)
        self.addSubview(label)
        
        gl.frame = self.bounds
        self.layer.insertSublayer(gl, at: 0)
    }
}
