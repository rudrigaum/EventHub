//
//  Place.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation

struct Place: Codable {
    let city: City
    let country: Country
    let address: PlaceAddress
    let location: Location
    let area: Area
    let state: State
    let id: String
}
