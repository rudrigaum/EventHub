//
//  Dates.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation

struct Dates: Codable {
    let start: Start
    let timezone: Timezone?
    let status: Status
    let spanMultipleDays: Bool
    let access: Access?
    let end: End?
}
