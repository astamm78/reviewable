//
//  OverviewResponse.swift
//  reviewable
//
//  Created by Andrew Stamm on 3/3/25.
//

import Foundation

struct OverviewResponse: Codable, Previewable {
    typealias PreviewType = OverviewResponse
    
    var status: String
    var copyright: String
    var numResults: Int
    var results: OverviewResults
    
    private enum CodingKeys: String, CodingKey {
        case status, copyright, results
        case numResults = "num_results"
    }
}

struct OverviewResults: Codable, Previewable {
    typealias PreviewType = OverviewResults
    
    var lists: [OverviewList]
}
