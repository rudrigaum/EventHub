//
//  PriceRange.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation

struct PriceRange: Codable {
    let type, currency: String
    let min, max: Double
}
