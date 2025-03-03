//
//  ReviewResult.swift
//  reviewable
//
//  Created by Andrew Stamm on 3/3/25.
//

import Foundation

struct ReviewResult: Codable, Previewable {
    typealias PreviewType = ReviewResult
    
    var urlString: String
    var publicationDateString: String
    var byline: String
    var bookTitle: String
    var bookAuthor: String
    var summary: String
    
    private enum CodingKeys: String, CodingKey {
        case byline, summary
        case urlString = "url"
        case publicationDateString = "publication_dt"
        case bookTitle = "book_title"
        case bookAuthor = "book_author"
    }
}
