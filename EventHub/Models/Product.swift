//
//  Product.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation

struct Product: Codable {
    let name, id: String
    let url: String
    let type: String
    let classifications: [Classification]
}
