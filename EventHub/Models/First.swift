//
//  First.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation

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
