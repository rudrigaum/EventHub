//
//  Outlet.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation

struct Outlet: Codable {
    let url: String
    let type: OutletType
}

enum OutletType: String, Codable {
    case tmMarketPlace = "tmMarketPlace"
    case venueBoxOffice = "venueBoxOffice"
}
