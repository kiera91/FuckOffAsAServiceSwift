//
//  FuckHTTPClient.swift
//  FuckOffAsAServiceSwift
//
//  Created by Kiera O'Reilly on 11/03/2016.
//  Copyright © 2016 Marks and Spencer. All rights reserved.
//

import Foundation

class FuckHTTPClient: AFHTTPSessionManager {
    let baseUrl = "https://www.foaas.com"
    var query: String!
    
    init(query:String) {
        super.init(baseURL: NSURL(string: baseUrl), sessionConfiguration: nil)
        self.query = query
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.query = ""
    }
    
    func call() {
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
