//
//  Ticketing.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation

struct Ticketing: Codable {
    let safeTix: AllInclusivePricing?
    let allInclusivePricing: AllInclusivePricing
    let id: String?
}
