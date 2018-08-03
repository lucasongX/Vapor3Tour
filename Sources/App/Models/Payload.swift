//
//  Payload.swift
//  App
//
//  Created by ASong on 2018/8/3.
//

import Foundation
import JWT
import JWTMiddleware


struct Payload: IdentifiableJWTPayload {
    
    let exp: TimeInterval
    let iat: TimeInterval
    
    let account: String
    let id: Int
    
    func verify() throws {
        let expiration = Date(timeIntervalSince1970: self.exp)
        try ExpirationClaim(value: expiration).verify()
    }
    
}


