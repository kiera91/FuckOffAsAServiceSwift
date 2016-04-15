//
//  FuckOffAsAService.swift
//  FuckOffAsAServiceSwift
//
//  Created by Kiera O'Reilly on 11/03/2016.
//  Copyright © 2016 Marks and Spencer. All rights reserved.
//

import Foundation

class FuckOffAsAService {
 
    var name: String = ""
    var from: String = ""
    var reference: String = ""
    var tool: String = ""
    var company: String = ""
    var theFuckToGive: FucksToGive = .off
    
    
    init(from: String, name: String) {
        self.from = from
        self.name = name
    }
    
    func typeOfFuckToGive(fuck: FucksToGive) {
        self.theFuckToGive = fuck
    }
    
    func withName(name: String) {
        self.name = name
    }
    
    func withFrom(from: String) {
        self.from = from
    }
    
    func withTool(tool: String) {
        self.tool = tool
    }
    
    func withReference(reference: String) {
        self.reference = reference
    }
    
    func withCompany(company: String) {
        self.company = company
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
