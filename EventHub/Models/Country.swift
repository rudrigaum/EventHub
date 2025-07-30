//
//  Country.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation

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
