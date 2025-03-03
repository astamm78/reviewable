//
//  Secrets_test.swift
//  reviewableTests
//
//  Created by Andrew Stamm on 3/3/25.
//

import XCTest
@testable import reviewable

final class Secrets_test: XCTestCase {
    func test_nytAPIKey() throws {
        XCTAssertNotNil(Secrets.nytAPIKey.value)
    }
    
    func test_nytAPISecret() throws {
        XCTAssertNotNil(Secrets.nytAPISecret.value)
    }
}
