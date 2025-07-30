//
//  EventLinks.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation

struct EventLinks: Codable {
    let linksSelf: First
    let venues, attractions: [First]?

    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
        case venues, attractions
    }
}
