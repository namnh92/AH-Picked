//
//  Date+Extension.swift
//  vn-pickup
//
//  Created by Nguyễn Nam on 6/16/19.
//  Copyright © 2019 Nguyễn Nam. All rights reserved.
//

import UIKit

extension Date {
    static let dateFormatS = "dd/MM/yyyy"
    static let currentCalendar = Calendar(identifier: .gregorian)
    static let currentTimeZone = TimeZone.ReferenceType.local
    
    static func getDateBy(string: String, format: String, calendar: Calendar = Date.currentCalendar, timeZone: TimeZone = Date.currentTimeZone) -> Date? {
        let formatter = DateFormatter()
        formatter.calendar = calendar
        formatter.timeZone = timeZone
        formatter.dateFormat = format
        return formatter.date(from: string)
    }
    
    func stringBy(format: String, calendar: Calendar = Calendar.current, timeZone: TimeZone = TimeZone.current) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        dateFormatter.calendar = calendar
        dateFormatter.timeZone = timeZone
        return dateFormatter.string(from: self)
    }
    
    func timeAgoSinceDate() -> String {
        
        // From Time
        let fromDate = Date()
        
        // To Time
        let toDate = self
        
        // Estimation
        
        if let interval = Calendar.current.dateComponents([.day], from: fromDate, to: toDate).day, interval >= 1 {
            
            return interval == 1 ? "\(interval)" + " " + "day" : "\(interval)" + " " + "days"
        }
        
        // Hours
        if let interval = Calendar.current.dateComponents([.hour], from: fromDate, to: toDate).hour, interval > 0 {
            
            return interval == 1 ? "\(interval)" + " " + "hour" : "\(interval)" + " " + "hours"
        }
        
        // Minute
        if let interval = Calendar.current.dateComponents([.minute], from: fromDate, to: toDate).minute, interval > 0 {
            
            return interval == 1 ? "\(interval)" + " " + "minute" : "\(interval)" + " " + "minutes"
        }
        
        return ""
    }
}
