//
//  StringExtention.swift
//  DerivativeIOS
//
//  Created by Dao Hai on 10/3/18.
//  Copyright © 2018 Ngo Dang Chac. All rights reserved.
//

import Foundation

extension String  {
    var isNumber: Bool {
        guard self.characters.count > 0 else { return false }
        let nums: Set<Character> = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ".", ","]
        return Set(self.characters).isSubset(of: nums)
    }
    
    var doubleConvert: Double {
        let stringWithoutComma = self.replacingOccurrences(of: ",", with: "")
        return Double(stringWithoutComma) != nil ? Double(stringWithoutComma)! : 0
    }
    
    
    
    var numberFormat: String {
        let doubleValue = Double(self) ?? 0
        return NumberFormatter.localizedString(from: NSNumber(value: doubleValue), number: NumberFormatter.Style.decimal)
    }
    
    var numberIntFormat: String {
        if let numb = Double(self) {
            if (numb == 0) {
                return "-"
            }
            let numberFormatter = NumberFormatter()
            numberFormatter.decimalSeparator = "."
            numberFormatter.numberStyle = NumberFormatter.Style.decimal
            numberFormatter.groupingSeparator = ","
            let formattedNumber = numberFormatter.string(from: NSNumber(value:numb))
            return formattedNumber!
        }
        return self
    }
    
    
    //right is the first encountered string after left
    func between(_ left: String, _ right: String) -> String? {
        guard
            let leftRange = range(of: left), let rightRange = range(of: right, options: .backwards)
            , leftRange.upperBound <= rightRange.lowerBound
            else { return nil }
        
        let sub = self[leftRange.upperBound...]
        let closestToLeftRange = sub.range(of: right)!
        return String(sub[..<closestToLeftRange.lowerBound])
    }
    
    var length: Int {
        get {
            return self.count
        }
    }
    
    func removeVietNamese() -> (String){
        let sstring = self
        var intIndex = 0
        while intIndex < sstring.length {
//            print("Text: \(sstring.character(intIndex))")
            switch sstring.character(intIndex) {
            case "Á", "À", "Ả", "Ã", "Ạ", "Ă", "ă", "Ắ", "Ằ", "Ặ", "Ẳ", "Â", "Ẩ", "Ấ", "Ậ", "Ẩ":
                sstring.replacingOccurrences(of: "\(sstring.character(intIndex))", with: "A")
                break
            case "É", "È", "Ẽ", "Ẻ", "Ẹ", "Ê", "Ề", "Ế", "Ể", "Ễ", "Ệ":
                sstring.replacingOccurrences(of: "\(sstring.character(intIndex))", with: "E")
                break
            case "Í", "Ì", "I", "Ĩ", "Ị", "Ỉ":
                sstring.replacingOccurrences(of: "\(sstring.character(intIndex))", with: "I")
                break
            case "Ò", "Ó", "Ỏ", "Õ", "Ọ", "Ô", "Ố", "Ồ", "Ổ", "Ộ", "Ớ", "Ờ", "Ở", "Ỡ", "Ợ":
                sstring.replacingOccurrences(of: "\(sstring.character(intIndex))", with: "O")
                break
            case "Ú", "Ù", "Ủ", "Ũ", "Ụ", "Ư", "Ứ", "Ừ", "Ử", "Ữ", "Ự":
                sstring.replacingOccurrences(of: "\(sstring.character(intIndex))", with: "U")
                break
            default:
                break
            }
            intIndex += 1
        }
        return sstring
    }
    
    func substring(to : Int) -> String {
        let toIndex = self.index(self.startIndex, offsetBy: to)
        return String(self[...toIndex])
    }
    
    func substring(from : Int) -> String {
        let fromIndex = self.index(self.startIndex, offsetBy: from)
        return String(self[fromIndex...])
    }
    
    func substring(_ r: Range<Int>) -> String {
        let fromIndex = self.index(self.startIndex, offsetBy: r.lowerBound)
        let toIndex = self.index(self.startIndex, offsetBy: r.upperBound)
        let indexRange = Range<String.Index>(uncheckedBounds: (lower: fromIndex, upper: toIndex))
        return String(self[indexRange])
    }
    
    func character(_ at: Int) -> Character {
        return self[self.index(self.startIndex, offsetBy: at)]
    }
    
    func lastIndexOfCharacter(_ c: Character) -> Int? {
        return range(of: String(c), options: .backwards)?.lowerBound.encodedOffset
    }
}

//extension String {
//
//    var localized: String {
//        let currentLocale = Preferences.shared.currentLocale()
//        guard
//            let bundlePath = Bundle.main.path(forResource: currentLocale, ofType: "lproj"),
//            let bundle = Bundle(path: bundlePath) else {
//                return self
//        }
//        return NSLocalizedString(self, tableName: nil, bundle: bundle, value: "", comment: "")
//    }
//
//}
