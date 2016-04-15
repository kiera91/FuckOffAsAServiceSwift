//
//  FuckHTTPClient.swift
//  FuckOffAsAServiceSwift
//
//  Created by Kiera O'Reilly on 11/03/2016.
//  Copyright © 2016 Marks and Spencer. All rights reserved.
//

import Foundation

protocol FuckHTTPClientProtocol {
    func call(query: String)
}

class FuckHTTPClient: AFHTTPSessionManager, FuckHTTPClientProtocol {
    let baseUrl = "https://www.foaas.com"
    
    init() {
        super.init(baseURL: NSURL(string: baseUrl), sessionConfiguration: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func call(query: String) {
        requestSerializer = AFJSONRequestSerializer()
        requestSerializer.setValue("application/json", forHTTPHeaderField: "Accept")
        GET(query, parameters: nil,
            success: {task, responseObject in
                print(responseObject)
            },failure: {task, error in
                print(error)

            })
    }
    
}
