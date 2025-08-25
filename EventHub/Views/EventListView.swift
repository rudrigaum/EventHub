//
//  EventListView.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 01/08/25.
//

import SwiftUI

struct EventListView: View {
    
    @StateObject private var viewModel = EventListViewModel()

    var body: some View {
        NavigationView {
            VStack {
                TextField("Pesquisar eventos", text: $viewModel.searchText , onCommit: {
                    Task { await viewModel.loadEvents(keyword: viewModel.searchText) }
                })
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

                Button("Buscar Eventos") {
                    Task {
                        await viewModel.loadEvents(keyword: viewModel.searchText)
                    }
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)

                if viewModel.isLoading {
                    ProgressView("Carregando Eventos...")
                } else if let errorMessage = viewModel.errorMessage {
                    Text("Erro: \(errorMessage)")
                        .foregroundColor(.red)
                } else if viewModel.events.isEmpty {
                    Text("Nenhum evento encontrado. Tente outra pesquisa.")
                        .foregroundColor(.gray)
                } else {
                    List {
                        ForEach(viewModel.events) { event in
                            VStack(alignment: .leading) {
                                Text(event.name).font(.headline)
                                Text(event.dates.start.localDate).font(.subheadline)
                                
                                if let embedded = event.embedded, let venue = embedded.venues.first {
                                    Text("Local: \(venue.name), \(venue.city.name)").font(.caption)
                                }
                            }
                            .padding()
                        }
                    }
                }
            }
            .navigationTitle("Eventos Ticketmaster")
            .onAppear {
                // Carregar eventos ao iniciar, se quiser
                // Task { await viewModel.loadEvents(keyword: searchText) }
            }
        }
    }
}
