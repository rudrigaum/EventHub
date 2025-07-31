//
//  UpcomingEvents.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation

struct UpcomingEvents: Codable {
    let ticketmaster: Int?
    let total, filtered: Int
    let universe, ticketweb, tmr: Int?

    enum CodingKeys: String, CodingKey {
        case ticketmaster
        case total = "_total"
        case filtered = "_filtered"
        case universe, ticketweb, tmr
    }
}
