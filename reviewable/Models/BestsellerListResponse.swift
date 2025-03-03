//
//  BestsellerList.swift
//  reviewable
//
//  Created by Andrew Stamm on 3/3/25.
//

import Foundation

struct BestsellerListResponse: Codable, Previewable {
    typealias PreviewType = BestsellerListResponse
    
    var status: String
    var copyright: String
    var numResults: Int
    var lastModified: String
    var results: [Bestseller]
    
    private enum CodingKeys: String, CodingKey {
        case status, copyright, results
        case numResults = "num_results"
        case lastModified = "last_modified"
    }
}
