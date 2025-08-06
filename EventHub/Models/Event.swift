//
//  Event.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation

struct Event: Codable, Identifiable {
    let name: String
    let type: EventType
    let id: String
    let test: Bool
    let url: String
    let locale: Locale
    let images: [EventImage]
    let sales: Sales
    let dates: Dates
    let classifications: [Classification]?
    let info, pleaseNote: String?
    let products: [Product]?
    let seatmap: Seatmap?
    let ticketLimit: TicketLimit?
    let ageRestrictions: AgeRestrictions?
    let ticketing: Ticketing?
    let links: EventLinks
    let embedded: EventEmbedded?
    let description: String?
    let place: Place?
    let promoter: Promoter?
    let promoters: [Promoter]?
    let accessibility: Accessibility?
    let priceRanges: [PriceRange]?
    let outlets: [Outlet]?

    enum CodingKeys: String, CodingKey {
        case name, type, id, test, url, locale, images, sales, dates, classifications, info, pleaseNote, products, seatmap, ticketLimit, ageRestrictions, ticketing
        case links = "_links"
        case embedded = "_embedded"
        case description, place, promoter, promoters, accessibility, priceRanges, outlets
    }
}
