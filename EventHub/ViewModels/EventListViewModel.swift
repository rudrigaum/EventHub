//
//  EventListViewModel.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 01/08/25.
//

import Foundation
import Combine

@MainActor
class EventListViewModel: ObservableObject {
    
    @Published var events: [Event] = []
    @Published var isLoading = false
    @Published var errorMessage: String?
    @Published var searchText: String = "music"
    @Published var selectedCountryCode: String? = "US"

    private let eventFetcher: EventFetching

    init(eventFetcher: EventFetching = TicketmasterAPIService(apiKey: Constants.ticketmasterAPIKey)) {
        self.eventFetcher = eventFetcher
    }

    func loadEvents(keyword: String) async {
        isLoading = true
        errorMessage = nil
        do {
            self.events = try await eventFetcher.fetchEvents(keyword: keyword, countryCode: selectedCountryCode)
        } catch {
            self.errorMessage = error.localizedDescription
            print("Failed to load events: \(error)")
        }
        isLoading = false
    }
}
