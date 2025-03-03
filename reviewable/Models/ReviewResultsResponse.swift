//
//  ReviewResultsResponse.swift
//  reviewable
//
//  Created by Andrew Stamm on 3/3/25.
//

import Foundation

struct ReviewResultsResponse: Codable, Previewable {
    typealias PreviewType = ReviewResultsResponse
    
    var numResults: Int
    var results: [ReviewResult]
    
    private enum CodingKeys: String, CodingKey {
        case results
        case numResults = "num_results"
    }
}
