//
//  Double.swift
//  FintechUI
//
//  Created by Brenda Saavedra Cantu on 10/10/23.
//

import Foundation

extension Double {
    /// format a number in default two decimals
    func formatToString(minFractionDigits: Int = 2, maxFractionDigits: Int = 2) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = minFractionDigits
        formatter.maximumFractionDigits = maxFractionDigits
        
        if let formattedString = formatter.string(from: NSNumber(value: self)) {
            return formattedString
        } else {
            return String(self)
        }
    }
    
    /// separate an amount in intergers and decimals in dupple
    ///  123.34 = (123, 34)
    func separateAmount() -> (integers:Int, decimals:Int) {
        let amountString = String(self)
        let components = amountString.components(separatedBy: ".")
        
        guard components.count == 2,
              let integers = Int(components[0]),
              let decimals = Int(components[1]) else {
            return (0, 0)
        }
        
        return (integers, decimals)
    }
}
