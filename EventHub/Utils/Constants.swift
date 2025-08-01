//
//  Constants.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 01/08/25.
//

import Foundation

struct Constants {
    static let ticketmasterAPIKey: String = {
            guard let apiKey = Bundle.main.infoDictionary?["TICKETMASTER_API_KEY_ENV"] as? String, !apiKey.isEmpty else {
                fatalError("Ticketmaster API Key not found in Info.plist. Please set TICKETMASTER_API_KEY in Secrets.xcconfig.")
            }
            return apiKey
        }()
}
