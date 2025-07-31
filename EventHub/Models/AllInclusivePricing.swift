//
//  AllInclusivePricing.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation

struct AllInclusivePricing: Codable {
    let enabled: Bool
}

enum ID: String, Codable {
    case ticketing = "ticketing"
}

enum EventType: String, Codable {
    case event = "event"
}
