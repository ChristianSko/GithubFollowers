//
//  Dates+Ext.swift
//  GithubFollowers
//
//  Created by Christian Skorobogatow on 24/4/21.
//

import Foundation

extension Date {
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        
        return dateFormatter.string(from: self)
    }
}
