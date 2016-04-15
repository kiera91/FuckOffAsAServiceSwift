//
//  MockFuckHTTPClient.swift
//  FuckOffAsAServiceSwift
//
//  Created by Kiera O'Reilly on 15/04/2016.
//  Copyright © 2016 Marks and Spencer. All rights reserved.
//

import Foundation

class MockFuckHTTPClient: FuckHTTPClientProtocol {
    var callCount = 0
    var query = ""
    
    func call(query: String) {
        callCount += 1
        self.query = query
    }
}
