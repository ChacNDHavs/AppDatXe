//
//  Constant.swift
//  AppDatXe
//
//  Created by DC on 3/6/19.
//  Copyright © 2019 Ngo Dang Chac. All rights reserved.
//

import UIKit

extension UIDevice {
    static let SCREEN_WIDTH = UIScreen.main.nativeBounds.width
    static let VIEW_CORNER = UIScreen.main.nativeBounds.width / 20
}

struct Constant {
    static var screenWidth : CGFloat = 0.0
    static var screenHeight : CGFloat = 0.0
    
    struct idViewController {
        static var registerView = "register_view_controller"
        static var loginView = "login_view_controller"
    }
    
    struct idStoryBoard {
        static var main = "Main"
    }
}
