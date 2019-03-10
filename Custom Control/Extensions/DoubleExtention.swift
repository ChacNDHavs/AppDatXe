//
//  StringExtention.swift
//  DerivativeIOS
//
//  Created by Dao Hai on 10/3/18.
//  Copyright © 2018 Ngo Dang Chac. All rights reserved.
//

import Foundation

extension Double {
    /// Rounds the double to decimal places value
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
    
    var cleanValue: String
    {
        return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
    
    var toStringWithCommas23: String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.groupingSize = 2
        numberFormatter.secondaryGroupingSize = 3
        numberFormatter.groupingSeparator = ","
        numberFormatter.locale = Locale(identifier: "en")
        return numberFormatter.string(from: NSNumber(value:self))!
    }
    
    var toStringWithCommas: String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.groupingSize = 3
        numberFormatter.locale = Locale(identifier: "en")
    
        return numberFormatter.string(from: NSNumber(value:self.rounded(toPlaces: 2)))!
    }
    
    var toStringWithCommas2Digit: String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.minimumFractionDigits = 2
        numberFormatter.groupingSize = 3
        numberFormatter.locale = Locale(identifier: "en")
        
        return numberFormatter.string(from: NSNumber(value:self.rounded(toPlaces: 2)))!
    }
    
    var formatToString: String {
        if (self == 0) {
            return "-"
        }
        let numberFormatter = NumberFormatter()
        numberFormatter.decimalSeparator = "."
        numberFormatter.numberStyle = NumberFormatter.Style.decimal
        numberFormatter.groupingSeparator = ","
        let formattedNumber = numberFormatter.string(from: NSNumber(value:self))
        return formattedNumber!
    }
}
