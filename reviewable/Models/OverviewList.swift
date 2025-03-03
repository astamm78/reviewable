//
//  OverviewList.swift
//  reviewable
//
//  Created by Andrew Stamm on 3/3/25.
//

import Foundation

struct OverviewList: Codable, Previewable, Identifiable {
    typealias PreviewType = OverviewList
    
    var id: Int
    var displayName: String
    var imageURLString: String?
    var books: [BookDetails]
    
    var imageURL: URL? {
        guard let imageURLString else { return nil }
        
        return URL(string: imageURLString)
    }
    
    private enum CodingKeys: String, CodingKey {
        case books
        case id = "list_id"
        case displayName = "display_name"
        case imageURLString = "list_image"
    }
}
