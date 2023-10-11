//
//  Utils.swift
//  FintechUI
//
//  Created by Brenda Saavedra Cantu on 11/10/23.
//

import Foundation

class Utils {
    /// format string must be dd-MM-yyyy get a Date
    static func getDateFromString(for date: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy"

        if let date = dateFormatter.date(from: date) {
            return date
        } else {
            return Date()
        }
    }
    
    /// format a Date to string
    static func getDateFormatted(for date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM d, yyyy"
        let dateString = dateFormatter.string(from: date)
        
        return dateString
    }
}
