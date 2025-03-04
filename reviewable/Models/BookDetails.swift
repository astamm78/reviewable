//
//  BookDetails.swift
//  reviewable
//
//  Created by Andrew Stamm on 3/3/25.
//

import Foundation

struct BookDetails: Codable, Previewable, Identifiable {
    typealias PreviewType = BookDetails
    
    var id: String { title }
    
    var title: String
    var description: String
    var author: String
    var publisher: String
    var primaryISBN13: String
    var primaryISBN10: String
    
    private enum CodingKeys: String, CodingKey {
        case title, description, author, publisher
        case primaryISBN13 = "primary_isbn13"
        case primaryISBN10 = "primary_isbn10"
    }
}
