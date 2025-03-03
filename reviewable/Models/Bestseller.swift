//
//  Bestseller.swift
//  reviewable
//
//  Created by Andrew Stamm on 3/3/25.
//

import Foundation

struct Bestseller: Codable, Previewable {
    typealias PreviewType = Bestseller
    
    var rank: Int
    var amazonProductURLString: String
    var bookDetails: [BookDetails]
    
    private enum CodingKeys: String, CodingKey {
        case rank
        case amazonProductURLString = "amazon_product_url"
        case bookDetails = "book_details"
    }
}
