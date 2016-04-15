//
//  FuckOffAsAServiceSwiftTests.swift
//  FuckOffAsAServiceSwiftTests
//
//  Created by Kiera O'Reilly on 11/03/2016.
//  Copyright © 2016 Marks and Spencer. All rights reserved.
//

import XCTest
@testable import FuckOffAsAServiceSwift

class FuckOffAsAServiceSwiftTests: XCTestCase {
    
    var sut: FuckOffAsAService!
    var mockHttpClient: MockFuckHTTPClient!
    
    override func setUp() {
        super.setUp()
        
        sut = FuckOffAsAService(mockHttpClient)
    }
    
    override func tearDown() {
        sut = nil
        
        super.tearDown()
    }
    
    func test_fuckNameFrom_callsHTTPClient_withCorrectParam() {
        sut.fuckNameFrom("kiera", "chris", .off)
        
        XCTAssert(mockHttpClient.call == 1, "HTTP client not called")
        XCTAssertEqual(mockHttpClient.query, "/off/kiera/chris")
    }
    
}
