//
//  String+Ext.swift
//  GithubFollowers
//
//  Created by Christian Skorobogatow on 24/4/21.
//

import Foundation

extension String {
    func convertToDate()-> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        dateFormatter.locale    = Locale(identifier: "en_GB")
        dateFormatter.timeZone  = .current
        
        return dateFormatter.date(from: self)
    }
    
    func convertToDisplayFormat() -> String {
        guard let date = self.convertToDate() else { return "N/A" }
        
    
        return date.convertToMonthYearFormat()
    }
}
