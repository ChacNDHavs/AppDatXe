//
//  StringExtension.swift
//  DerivativeIOS
//
//  Created by DC on 12/14/18.
//  Copyright © 2018 Ngo Dang Chac. All rights reserved.
//

import UIKit

extension String {
    func convertToDouble() -> (Double?) {
        if (!self.isNumber) {
            return nil
        }
        let numberFormatter = NumberFormatter()
        numberFormatter.decimalSeparator = "."
        numberFormatter.numberStyle = NumberFormatter.Style.decimal
        numberFormatter.groupingSeparator = ","
        let result = numberFormatter.number(from: self)
        return Double(exactly: result!)!.rounded(toPlaces: 1)
    }
    
    func convertToMoneyType() -> (String) {
        var result = self.convertToDouble()
        return result != nil ? (result?.toStringWithCommas)! : "0"
    }
}
