//
//  State.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation

struct State: Codable {
    let name, stateCode: String
}

enum VenueType: String, Codable {
    case venue = "venue"
}
