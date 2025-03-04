//
//  ReviewService.swift
//  reviewable
//
//  Created by Andrew Stamm on 3/3/25.
//

import Foundation

struct ReviewService {
    static func search(title: String?, author: String?, isbn: String?) async throws -> ReviewResultsResponse {
        let endpoint = NYTEndpoint.reviewSearch(title: title, author: author, isbn: isbn)
        let data = try await NetworkingService.shared.request(endpoint: endpoint)
        let response: ReviewResultsResponse = try DataHandler.shared.decodeData(data)
        return response
    }
}
