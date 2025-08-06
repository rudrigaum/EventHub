//
//  Venue.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation

struct Venue: Codable, Identifiable {
    let name: String
    let type: VenueType
    let id: String
    let test: Bool
    let url: String?
    let locale: Locale
    let images: [EventImage]?
    let postalCode: String
    let timezone: Timezone
    let city: City
    let state: State?
    let country: Country
    let address: VenueAddress
    let location: Location
    let markets: [Genre]?
    let dmas: [DMA]?
    let social: Social?
    let boxOfficeInfo: BoxOfficeInfo?
    let parkingDetail, accessibleSeatingDetail: String?
    let generalInfo: GeneralInfo?
    let upcomingEvents: UpcomingEvents
    let ada: Ada?
    let links: AttractionLinks

    enum CodingKeys: String, CodingKey {
        case name, type, id, test, url, locale, images, postalCode, timezone, city, state, country, address, location, markets, dmas, social, boxOfficeInfo, parkingDetail, accessibleSeatingDetail, generalInfo, upcomingEvents, ada
        case links = "_links"
    }
}

struct VenueAddress: Codable {
    let line1: String
    let line2: String?
}

struct City: Codable {
    let name: String
}

struct Country: Codable {
    let name: Name
    let countryCode: CountryCode
}

enum CountryCode: String, Codable {
    case ca = "CA"
    case gb = "GB"
    case us = "US"
}

enum Name: String, Codable {
    case canada = "Canada"
    case greatBritain = "Great Britain"
    case unitedStatesOfAmerica = "United States Of America"
}

struct State: Codable {
    let name, stateCode: String
}

enum VenueType: String, Codable {
    case venue = "venue"
}

struct Location: Codable {
    let longitude, latitude: String
}
