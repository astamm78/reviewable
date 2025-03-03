//
//  Secrets.swift
//  reviewable
//
//  Created by Andrew Stamm on 3/3/25.
//

import Foundation

enum Secrets: String {
    case nytAPIKey = "NYT_API_KEY"
    case nytAPISecret = "NYT_API_SECRET"
    
    private var dictionary: NSDictionary? {
        guard let plistPath = Bundle.main.path(forResource: "Secrets", ofType: "plist") else {
            return nil
        }
        
        return NSDictionary(contentsOfFile: plistPath)
    }
    
    var value: String? {
        dictionary?[self.rawValue] as? String
    }
}
