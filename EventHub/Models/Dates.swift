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

struct Start: Codable {
    let localDate: String
    let localTime: String?
    let dateTime: String?
    let dateTBD, dateTBA, timeTBA, noSpecificTime: Bool
}

struct End: Codable {
    let localTime: String?
    let dateTime: String?
    let approximate, noSpecificTime: Bool
    let localDate: String?
}

struct Access: Codable {
    let startDateTime: String?
    let startApproximate: Bool
    let endDateTime: String?
    let endApproximate: Bool
}

struct Status: Codable {
    let code: Code
}

enum Code: String, Codable {
    case offsale = "offsale"
    case onsale = "onsale"
}

enum Timezone: String, Codable {
    case americaChicago = "America/Chicago"
    case americaNewYork = "America/New_York"
    case americaToronto = "America/Toronto"
    case etcGMT = "Etc/GMT"
    case europeLondon = "Europe/London"
}
