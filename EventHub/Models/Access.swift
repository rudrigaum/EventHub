//
//  Access.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation

struct Access: Codable {
    let startDateTime: Date
    let startApproximate: Bool
    let endDateTime: Date?
    let endApproximate: Bool
}
