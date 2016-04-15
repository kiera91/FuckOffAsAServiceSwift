//
//  FuckOffAsAService.swift
//  FuckOffAsAServiceSwift
//
//  Created by Kiera O'Reilly on 11/03/2016.
//  Copyright © 2016 Marks and Spencer. All rights reserved.
//

import Foundation

protocol FuckOffAsAServiceProtocol {
    var name: String! { get set }
    var from: String! { get set }
    var reference: String! { get set }
    var tool: String! { get set }
    var company: String! { get set }
    var theFuckToGive: FucksToGive! { get set }
    
    func buildYourFuckString() -> String
}

class FuckOffAsAService: FuckOffAsAServiceProtocol {
    var name: String!
    var from: String!
    var reference: String!
    var tool: String!
    var company: String!
    var theFuckToGive: FucksToGive!
    
    init(from: String, name: String, reference: String = "", tool: String = "", company: String = "", theFuckToGive: FucksToGive) {
        self.from = from
        self.name = name
        self.reference = reference
        self.tool = tool
        self.company = company
        self.theFuckToGive = theFuckToGive
    }
    
    func buildYourFuckString() -> String {
        var fullFuck = theFuckToGive.rawValue
        fullFuck = fullFuck.stringByReplacingOccurrencesOfString(":name", withString: name)
        fullFuck = fullFuck.stringByReplacingOccurrencesOfString(":from", withString: from)
        fullFuck = fullFuck.stringByReplacingOccurrencesOfString(":company", withString: company)
        fullFuck = fullFuck.stringByReplacingOccurrencesOfString(":reference", withString: reference)
        fullFuck = fullFuck.stringByReplacingOccurrencesOfString(":tool", withString: tool)
        return fullFuck
    }
    
    func callFuckService() {
        let fuckClient = FuckHTTPClient(query: buildYourFuckString())
        fuckClient.call()
    }
}
