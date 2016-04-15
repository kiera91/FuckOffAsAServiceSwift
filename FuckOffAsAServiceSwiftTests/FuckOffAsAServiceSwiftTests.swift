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
        
        mockHttpClient = MockFuckHTTPClient()
        sut = FuckOffAsAService(fuckClient: mockHttpClient)
    }
    
    override func tearDown() {
        sut = nil
        
        super.tearDown()
    }
    
    func test_fuckNameFrom_callsHTTPClient_withCorrectParam() {
        sut.fuckNameFrom("kiera", from: "chris", fuckToGive: .off)
        
        XCTAssertEqual(mockHttpClient.callCount, 1, "HTTP client not called")
        XCTAssertEqual(mockHttpClient.query, "/off/kiera/chris")
    }
    
    func test_fuckFrom_callsHTTPClient_withCorrectParam() {
        sut.fuckFrom("kiera", fuckToGive: .this)
        
        XCTAssertEqual(mockHttpClient.callCount, 1, "HTTP client not called")
        XCTAssertEqual(mockHttpClient.query, "/this/kiera")
    }
    
    func test_fuckNameFromReference_callsHTTPClient_withCorrectParam() {
        sut.fuckNameFromReference("kiera", from: "chris", reference: "test", fuckToGive: .field)
        
        XCTAssertEqual(mockHttpClient.callCount, 1, "HTTP client not called")
        XCTAssertEqual(mockHttpClient.query, "/field/kiera/chris/test")
    }
    
    func test_fuckToGiveNameCompanyFrom_callsHTTPClient_withCorrectParam() {
        sut.fuckToGiveNameCompanyFrom("kiera", company: "tesco", from: "chris", fuckToGive: .ballmer)
        
        XCTAssertEqual(mockHttpClient.callCount, 1, "HTTP client not called")
        XCTAssertEqual(mockHttpClient.query, "/ballmer/kiera/tesco/chris")
    }
    
    func test_fuckToolFrom_callsHTTPClient_withCorrectParam() {
        sut.fuckToolFrom("tool", from: "chris", fuckToGive: .caniuse)
        
        XCTAssertEqual(mockHttpClient.callCount, 1, "HTTP client not called")
        XCTAssertEqual(mockHttpClient.query, "/caniuse/tool/chris")
    }
    
    func test_fuckReactionFrom_callsHTTPClient_withCorrectParam() {
        sut.fuckReactionFrom("rubbish", from: "chris", fuckToGive: .keepcalm)
        
        XCTAssertEqual(mockHttpClient.callCount, 1, "HTTP client not called")
        XCTAssertEqual(mockHttpClient.query, "/keepcalm/rubbish/chris")
    }
    
    func test_fuckDoSomethingFrom_callsHTTPClient_withCorrectParam() {
        sut.fuckDoSomethingFrom("do", something: "something", from: "chris", fuckToGive: .doSomething)
        
        XCTAssertEqual(mockHttpClient.callCount, 1, "HTTP client not called")
        XCTAssertEqual(mockHttpClient.query, "/dosomething/do/something/chris")
    }
    
    func test_fuckSubjectFrom_callsHTTPClient_withCorrectParam() {
        sut.fuckSubjectFrom("kiera", from: "chris", fuckToGive: .thumbs)
        
        XCTAssertEqual(mockHttpClient.callCount, 1, "HTTP client not called")
        XCTAssertEqual(mockHttpClient.query, "/thumbs/kiera/chris")
    }
    
    func test_fuckNounFrom_callsHTTPClient_withCorrectParam() {
        sut.fuckNounFrom("kiera", from: "chris", fuckToGive: .greed)
        
        XCTAssertEqual(mockHttpClient.callCount, 1, "HTTP client not called")
        XCTAssertEqual(mockHttpClient.query, "/greed/kiera/chris")
    }
}
