//
//  Attraction.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation

struct Attraction: Codable, Identifiable {
    let name: String
    let type: AttractionType
    let id: String
    let test: Bool
    let url: String
    let locale: Locale
    let externalLinks: ExternalLinks?
    let images: [Image]
    let classifications: [Classification]
    let upcomingEvents: [String: Int]
    let links: AttractionLinks
    let aliases: [String]?
    let draftStatus: String?

    enum CodingKeys: String, CodingKey {
        case name, type, id, test, url, locale, externalLinks, images, classifications, upcomingEvents
        case links = "_links"
        case aliases, draftStatus
    }
}
