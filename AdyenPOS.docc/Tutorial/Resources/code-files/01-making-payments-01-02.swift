//
//  POSViewModel.swift
//  AdyenPOS
//
//  Copyright (c) 2023 Adyen N.V.
//

import AdyenPOS
import Foundation

class POSViewModel {}

extension POSViewModel: PaymentServiceDelegate {
    func register(with setupToken: String) async throws -> String {
        guard let url = URL(string: "{ADDRESS_OF_YOUR_BACKEND_API}") else { throw POSError.invalidURL }
        let request = URLRequest(url: url)
        let (data, _) = try await URLSession.shared.data(for: request)
        let response = try JSONDecoder().decode(SessionsResponse.self, from: data)
        return response.sdkData
    }
}

struct SessionsResponse: Decodable {
    let sdkData: String
}

enum POSError: Error {
    case invalidURL
}
