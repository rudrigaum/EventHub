//
//  Start.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation

struct Start: Codable {
    let localDate: String
    let localTime: String?
    let dateTime: Date?
    let dateTBD, dateTBA, timeTBA, noSpecificTime: Bool
}
