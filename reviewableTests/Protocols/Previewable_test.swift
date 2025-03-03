//
//  Previewable_test.swift
//  reviewableTests
//
//  Created by Andrew Stamm on 3/3/25.
//

import XCTest
@testable import reviewable

final class Previewable_test: XCTestCase {
    func test_ReviewResultResponsePreview() throws {
        XCTAssertNotNil(ReviewResultsResponse.preview)
    }
    
    func test_BestsellerListResponsePreview() throws {
        XCTAssertNotNil(BestsellerListResponse.preview)
    }
    
    func test_BestsellerPreview() throws {
        XCTAssertNotNil(Bestseller.preview)
    }
    
    func test_BookDetailsPreview() throws {
        XCTAssertNotNil(BookDetails.preview)
    }
    
    func test_ReviewResultPreview() throws {
        XCTAssertNotNil(ReviewResult.preview)
    }
}
