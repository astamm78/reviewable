//
//  OverviewList.swift
//  reviewable
//
//  Created by Andrew Stamm on 3/3/25.
//

import Foundation

struct OverviewList: Codable, Previewable {
    typealias PreviewType = OverviewList
    
    var listID: Int
    var displayName: String
    var imageURLString: String
    var books: [BookDetails]
    
    private enum CodingKeys: String, CodingKey {
        case books
        case listID = "list_id"
        case displayName = "display_name"
        case imageURLString = "list_image"
    }
}
