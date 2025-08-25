//
//  APIError.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 05/08/25.
//

import Foundation

enum APIError: Error, LocalizedError {
    case invalidURL
    case invalidResponse
    case noData
    case decodingError(Error)
    case networkError(Error)
    case apiError(statusCode: Int, message: String?)

    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "The URL for the request was invalid."
        case .invalidResponse:
            return "The server returned an an invalid response."
        case .noData:
            return "No data was returned from the server."
        case .decodingError(let error):
            return "Failed to decode the response: \(error.localizedDescription)"
        case .networkError(let error):
            return "Network error: \(error.localizedDescription)"
        case .apiError(let statusCode, let message):
            return "API Error \(statusCode): \(message ?? "Unknown error")"
        }
    }
}
