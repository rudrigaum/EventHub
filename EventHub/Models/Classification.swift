//
//  Classification.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation

struct Classification: Codable {
    let primary: Bool
    let segment, genre: Genre
    let subGenre, type, subType: Genre?
    let family: Bool
}

struct Genre: Codable {
    let id, name: String
}
