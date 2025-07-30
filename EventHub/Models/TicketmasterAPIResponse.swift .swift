//
//  TicketmasterAPIResponse.swift .swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation


struct TicketmasterAPIResponse: Codable {
    let _embedded: EmbeddedEvents?
    let _links: Links?
    let page: Page?
}
