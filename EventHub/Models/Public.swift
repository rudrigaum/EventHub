//
//  Public.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation

struct Public: Codable {
    let startDateTime: Date?
    let startTBD, startTBA: Bool
    let endDateTime: Date?
}
