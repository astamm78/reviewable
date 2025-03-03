//
//  NYTList.swift
//  reviewable
//
//  Created by Andrew Stamm on 3/3/25.
//

import Foundation

enum NYTList: String {
    case combinedPrintEbookFiction = "combined-print-and-e-book-fiction"
    case combinedPrintEbookNonfiction = "combined-print-and-e-book-nonfiction"
    case hardcoverFiction = "hardcover-fiction"
    case hardcoverNonfiction = "hardcover-nonfiction"
    case tradeFictionPaperback = "trade-fiction-paperback"
    case massMarketFiction = "mass-market-paperback"
    case paperbackNonfiction = "paperback-nonfiction"
    case combinedPrintFiction = "combined-print-fiction"
    case combinedPrintNonfiction = "combined-print-nonfiction"
    
    var displayName: String {
        self.rawValue.split(separator: "-").map({ $0.capitalized }).joined(separator: " ")
    }
}
