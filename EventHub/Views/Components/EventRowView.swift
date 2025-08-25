//
//  EventRowView.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 05/08/25.
//

import Foundation
import SwiftUI

struct EventRowView: View {
    let event: Event
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(event.name)
                .font(.headline)
                .foregroundColor(.primary)
            
            HStack {
                Image(systemName: "calendar")
                Text(event.dates.start.localDate)
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
            
            if let venue = event.embedded?.venues.first {
                HStack {
                    Image(systemName: "location.fill")
                    Text("Local: \(venue.name), \(venue.city.name)")
                }
                .font(.caption)
                .foregroundColor(.secondary)
            }
        }
        .padding()
    }
}
