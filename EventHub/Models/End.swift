//
//  End.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation

struct End: Codable {
    let localTime: String?
    let dateTime: Date?
    let approximate, noSpecificTime: Bool
    let localDate: String?
}
