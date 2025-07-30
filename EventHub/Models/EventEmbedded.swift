//
//  EventEmbedded.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation

struct EventEmbedded: Codable {
    let venues: [Venue]
    let attractions: [Attraction]?
}
