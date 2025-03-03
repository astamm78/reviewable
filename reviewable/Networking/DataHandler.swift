//
//  DataHandler.swift
//  reviewable
//
//  Created by Andrew Stamm on 3/3/25.
//

import Foundation

enum DataHandlerError: Error {
    case emptyDataError
    case deserializationError(class: String)
}

struct DataHandler {
    static var shared = DataHandler()
    
    func decodeData<T: Codable>(_ data: Data?) throws -> T {
        guard let data else {
            throw DataHandlerError.emptyDataError
        }
        
        do {
            let responseObject: T = try JSONDecoder().decode(T.self, from: data)
            return responseObject
        } catch {
            print("### DESERIALIZATION ERROR :: " + String(describing: T.self))
            print("### " + String(describing: error))
            throw DataHandlerError.deserializationError(class: String(describing: T.self))
        }
    }
}
