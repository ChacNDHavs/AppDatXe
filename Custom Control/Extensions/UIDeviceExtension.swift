//
//  UIDeviceExtension.swift
//  DerivativeIOS
//
//  Created by Dao Hai on 10/3/18.
//  Copyright © 2018 Ngo Dang Chac. All rights reserved.
//

import UIKit

extension UIDevice {
    
    enum DeviceType: String {
        case iPhone4_4S = "iPhone 4 or iPhone 4S"
        case iPhones_5_5s_5c_SE = "iPhone 5, iPhone 5s, iPhone 5c or iPhone SE"
        case iPhones_6_6s_7_8 = "iPhone 6, iPhone 6S, iPhone 7 or iPhone 8"
        case iPhones_6Plus_6sPlus = "iPhone 6 Plus, iPhone 6S Plus, iPhone 7 Plus or iPhone 8 Plus"
        case iPhones_7Plus_8Plus = "iPhone 7 Plus, iPhone 8 Plus"
        case iPhoneX_XS = "iPhone X"
        case iPhoneXSMax = "iphoneXSMax"
        case iPhoneXR = "iphoneXR"
        case iPad97 = "ipad"
        case iPad105 = "ipad105"
        case iPad11 = "ipad11"
        case iPad129 = "ipad129"
        case unknown = "iPad2nd"
    }
    
    var deviceType: DeviceType {
        switch UIScreen.main.nativeBounds.height {
        case 960:
            return .iPhone4_4S
        case 1136:
            return .iPhones_5_5s_5c_SE
        case 1334:
            return .iPhones_6_6s_7_8
        case 1792:
            return .iPhoneXR
        case 1920:
            return .iPhones_6Plus_6sPlus
        case 2208:
            return .iPhones_7Plus_8Plus
        case 2048:
            return .iPad97
        case 2224:
            return .iPad105
        case 2388:
            return .iPad11
        case 2436:
            return .iPhoneX_XS
        case 2688:
            return .iPhoneXSMax
        case 2732:
            return .iPad129
        default:
            return .unknown
        }
    }
}
