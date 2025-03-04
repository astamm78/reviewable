//
//  NYTEndpoint.swift
//  reviewable
//
//  Created by Andrew Stamm on 3/3/25.
//

import Foundation
import Alamofire

enum NYTEndpoint {
    case overview
    case lists(nytList: NYTList)
    case reviewSearch(title: String?, author: String?, isbn: String?)
    
    var path: String {
        switch self {
        case .overview:
            "lists/overview.json"
        case .lists:
            "lists.json"
        case .reviewSearch:
            "reviews.json"
        }
    }
    
    var params: Parameters {
        var baseParams: Parameters = ["api-key": Secrets.nytAPIKey.value ?? ""]

        switch self {
        case .overview:
            return baseParams
        case .lists(let nytList):
            baseParams["list"] = nytList.rawValue
        case .reviewSearch(let title, let author, let isbn):
            if let title {
                baseParams["title"] = title
            }
            
            if let author {
                baseParams["author"] = author
            }
            
            if let isbn {
                baseParams["isbn"] = isbn
            }
        }

        return baseParams
    }
    
    var url: String? {
        return "https://api.nytimes.com/svc/books/v3/\(self.path)"
    }
    
    var method: HTTPMethod {
        .get
    }
}
