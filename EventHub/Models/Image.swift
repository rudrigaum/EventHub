//
//  Image.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation

struct Image: Codable {
    let ratio: Ratio?
    let url: String
    let width, height: Int
    let fallback: Bool
}

enum Ratio: String, Codable {
    case the16_9 = "16_9"
    case the3_2 = "3_2"
    case the4_3 = "4_3"
}
