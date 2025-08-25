//
//  Seatmap.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation

struct Seatmap: Codable {
    let staticURL: String
    let id: String?

    enum CodingKeys: String, CodingKey {
        case staticURL = "staticUrl"
        case id
    }
}
