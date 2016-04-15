//
//  FuckOffAsAService.swift
//  FuckOffAsAServiceSwift
//
//  Created by Kiera O'Reilly on 11/03/2016.
//  Copyright © 2016 Marks and Spencer. All rights reserved.
//

import Foundation

protocol FuckOffAsAServiceProtocol {
    func fuckNameFrom(name: String, from: String, fuckToGive: FuckToGiveNameFrom)
    func fuckFrom(from: String, fuckToGive: FuckToGiveFrom)
    func fuckNameFromReference(name: String, from: String, reference: String,fuckToGive: FuckToGiveNameFromReference)
    func fuckToGiveNameCompanyFrom(name: String, company: String, from: String,fuckToGive: FuckToGiveNameCompanyFrom)
    func fuckToolFrom(tool: String, from: String, fuckToGive: FuckToGiveToolFrom)
    func fuckReactionFrom(reaction: String, from: String, fuckToGive: FuckToGiveReactionFrom)
    func fuckDoSomethingFrom(`do`: String, something: String, from: String, fuckToGive: FuckToGiveDoSomethingFrom)
    func fuckSubjectFrom(subject: String, from: String, fuckToGive: FuckToGiveSubjectFrom)
    func fuckNounFrom(noun: String, from: String, fuckToGive: FuckToGiveNounFrom)
}

class FuckOffAsAService: FuckOffAsAServiceProtocol {
    let fuckClient: FuckHTTPClientProtocol!
    
    init(fuckClient: FuckHTTPClientProtocol = FuckHTTPClient()) {
        self.fuckClient = fuckClient
    }
    
    func fuckNameFrom(name: String, from: String, fuckToGive: FuckToGiveNameFrom) {
        let fullFuckString = "\(fuckToGive.rawValue)\(name)/\(from)"
        callFuckService(fullFuckString)
    }
    
    func fuckFrom(from: String, fuckToGive: FuckToGiveFrom) {
        let fullFuckString = "\(fuckToGive.rawValue)\(from)"
        callFuckService(fullFuckString)
    }
    
    func fuckNameFromReference(name: String, from: String, reference: String,fuckToGive: FuckToGiveNameFromReference) {
        let fullFuckString = "\(fuckToGive.rawValue)\(name)/\(from)/\(reference)"
        callFuckService(fullFuckString)
    }
    
    func fuckToGiveNameCompanyFrom(name: String, company: String, from: String,fuckToGive: FuckToGiveNameCompanyFrom) {
        let fullFuckString = "\(fuckToGive.rawValue)\(name)/\(company)/\(from)"
        callFuckService(fullFuckString)
    }
    
    func fuckToolFrom(tool: String, from: String, fuckToGive: FuckToGiveToolFrom) {
        let fullFuckString = "\(fuckToGive.rawValue)\(tool)/\(from)"
        callFuckService(fullFuckString)
    }
    
    func fuckReactionFrom(reaction: String, from: String, fuckToGive: FuckToGiveReactionFrom) {
        let fullFuckString = "\(fuckToGive.rawValue)\(reaction)/\(from)"
        callFuckService(fullFuckString)
    }
    
    func fuckDoSomethingFrom(`do`: String, something: String, from: String, fuckToGive: FuckToGiveDoSomethingFrom) {
        let fullFuckString = "\(fuckToGive.rawValue)\(`do`)/\(something)/\(from)"
        callFuckService(fullFuckString)
    }
    
    func fuckSubjectFrom(subject: String, from: String, fuckToGive: FuckToGiveSubjectFrom) {
        let fullFuckString = "\(fuckToGive.rawValue)\(subject)/\(from)"
        callFuckService(fullFuckString)
    }
    
    func fuckNounFrom(noun: String, from: String, fuckToGive: FuckToGiveNounFrom) {
        let fullFuckString = "\(fuckToGive.rawValue)\(noun)/\(from)"
        callFuckService(fullFuckString)
    }
    
    func callFuckService(fuckString: String) {
        fuckClient.call(fuckString)
    }
}
