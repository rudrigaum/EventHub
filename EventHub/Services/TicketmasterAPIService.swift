//
//  TicketmasterAPIService.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 31/07/25.
//

import Foundation




// MARK: - TicketmasterAPIService (Implementação do Serviço)
class TicketmasterAPIService: EventFetching {
    
    private let apiKey: String

    init(apiKey: String) {
        self.apiKey = apiKey
    }

    func fetchEvents(keyword: String, countryCode: String?) async throws -> [Event] {
        var components = URLComponents(string: "https://app.ticketmaster.com/discovery/v2/events.json")!

        var queryItems = [
            URLQueryItem(name: "apikey", value: apiKey),
            URLQueryItem(name: "keyword", value: keyword)
        ]

        if let countryCode = countryCode, !countryCode.isEmpty {
            queryItems.append(URLQueryItem(name: "countryCode", value: countryCode))
        }
        // Adicione mais parâmetros de consulta aqui conforme a necessidade
        // Ex: URLQueryItem(name: "city", value: "London")
        // Ex: URLQueryItem(name: "startDateTime", value: "2025-08-01T00:00:00Z")

        components.queryItems = queryItems

        guard let url = components.url else {
            throw APIError.invalidURL
        }

        print("Fetching events from URL: \(url.absoluteString)") // Para debug

        do {
            let (data, response) = try await URLSession.shared.data(from: url)

            guard let httpResponse = response as? HTTPURLResponse else {
                throw APIError.invalidResponse
            }

            guard (200...299).contains(httpResponse.statusCode) else {
                // Tenta decodificar uma mensagem de erro da API se disponível
                let errorMessage = String(data: data, encoding: .utf8)
                throw APIError.apiError(statusCode: httpResponse.statusCode, message: errorMessage)
            }

            let decoder = JSONDecoder()
            // Formato de data da API da Ticketmaster pode exigir um dateFormatter personalizado
            // Ex: "2025-08-01T00:00:00Z" ou "2025-08-01"
            // Se o QuickType gerou propriedades 'Date' para campos de data/hora, você vai precisar disso.
            // decoder.dateDecodingStrategy = .iso8601 // Ou outro formato se o JSON usa.
            // O QuickType geralmente gera 'String' para datas, então a conversão seria manual no ViewModel.

            // O struct de nível superior gerado pelo QuickType é `Welcome`, não `TicketmasterAPIResponse`.
            // Você pode renomear `Welcome` para `TicketmasterAPIResponse` para maior clareza.
            let apiResponse = try decoder.decode(Welcome.self, from: data) // Use 'Welcome' aqui

            // Verifique se há eventos no embedded, caso contrário retorne um array vazio
            return apiResponse.embedded.events
        } catch let urlError as URLError {
            throw APIError.networkError(urlError)
        } catch let decodingError as DecodingError {
            throw APIError.decodingError(decodingError)
        } catch {
            throw error // Erros genéricos não tratados especificamente
        }
    }
}
