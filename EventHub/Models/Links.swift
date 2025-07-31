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

struct EventLinks: Codable {
    let linksSelf: First
    let venues, attractions: [First]?

    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
        case venues, attractions
    }
}

struct AttractionLinks: Codable {
    let linksSelf: First

    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
    }
}

struct First: Codable {
    let href: String
}

enum Locale: String, Codable {
    case enDe = "en-de"
    case enUs = "en-us"
}

enum AttractionType: String, Codable {
    case attraction = "attraction"
}



