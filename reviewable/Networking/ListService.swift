//
//  ListService.swift
//  reviewable
//
//  Created by Andrew Stamm on 3/3/25.
//

import Foundation

struct ListService {
    static func getCurrentList(nytList: NYTList) async throws -> BestsellerListResponse {
        let endpoint = NYTEndpoint.lists(nytList: nytList)
        let data = try await NetworkingService.shared.request(endpoint: endpoint)
        let response: BestsellerListResponse = try DataHandler.shared.decodeData(data)
        return response
    }
}
