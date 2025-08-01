//
//  EventFetching.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 31/07/25.
//

import Foundation

import Foundation

protocol EventFetching {
    func fetchEvents(keyword: String, countryCode: String?) async throws -> [Event]
}
