//
//  NetworkingService.swift
//  reviewable
//
//  Created by Andrew Stamm on 3/3/25.
//

import Foundation
import Alamofire

enum NetworkingServiceError: Error {
    case emptyURL
    case responseError(afError: AFError)
}

actor NetworkingService: GlobalActor {
    static var shared = NetworkingService()
    
    private init() {}
    
    func request(endpoint: NYTEndpoint) async throws -> Data? {
        return try await withCheckedThrowingContinuation { continuation in
            guard let url = endpoint.url else {
                continuation.resume(throwing: NetworkingServiceError.emptyURL)
                return
            }
            
            AF.request(
                url,
                method: endpoint.method,
                parameters: endpoint.params
            )
            .responseData { response in
                switch(response.result) {
                case let .success(data):
                    continuation.resume(returning: data)
                case let .failure(error):
                    continuation.resume(throwing: NetworkingServiceError.responseError(afError: error))
                }
            }
        }
    }
}
