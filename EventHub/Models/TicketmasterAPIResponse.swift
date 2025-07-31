//
//  Welcome.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation

struct Welcome: Codable {
    let embedded: WelcomeEmbedded
    let links: WelcomeLinks
    let page: Page

    enum CodingKeys: String, CodingKey {
        case embedded = "_embedded"
        case links = "_links"
        case page
    }
}

struct WelcomeEmbedded: Codable {
    let events: [Event]
}

struct WelcomeLinks: Codable {
    let first, linksSelf, next, last: First

    enum CodingKeys: String, CodingKey {
        case first
        case linksSelf = "self"
        case next, last
    }
}

struct Page: Codable {
    let size, totalElements, totalPages, number: Int
}
