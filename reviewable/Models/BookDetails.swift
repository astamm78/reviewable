//
//  BookDetails.swift
//  reviewable
//
//  Created by Andrew Stamm on 3/3/25.
//

import Foundation

struct BookDetails: Codable, Previewable {
    typealias PreviewType = BookDetails
    
    var title: String
    var description: String
    var author: String
    var publisher: String
}
