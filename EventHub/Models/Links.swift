//
//  Links.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation

struct Links: Codable {
    let first, selfURL, next: Link?

    enum CodingKeys: String, CodingKey {
        case first
        case selfURL = "self"
        case next
    }
}

