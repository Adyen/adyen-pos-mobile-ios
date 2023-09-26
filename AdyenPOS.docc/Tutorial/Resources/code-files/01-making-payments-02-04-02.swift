//
//  POSViewController.swift
//  AdyenPOS
//
//  Copyright (c) 2023 Adyen N.V.
//

import AdyenPOS
import UIKit

class POSViewModel {
    lazy var paymentService = PaymentService(delegate: self)
    
    @Sendable
    func initializePOSSDK() async {
        try await paymentService.warmUp()
    }
    
    func performPayment(presentationMode: TransactionPresentationMode) async {
        do {
            let transaction = try Payment.Request(data: requestData)
            let paymentInterface = try paymentService.getPaymentInterface(with: .tapToPay)
        } catch {
            print(error)
        }
    }
    
}

extension POSViewModel: PaymentServiceDelegate {
    func register(with setupToken: String) async throws -> String {
        guard let url = URL(string: "{ADDRESS_OF_YOUR_BACKEND_API}") else { throw POSError.invalidURL }
        let request = URLRequest(url: url)
        let (data, _) = try await URLSession.shared.data(for: request)
        let response = try JSONDecoder().decode(SessionsResponse.self, from: data)
        return response.sdkData
    }
}

class POSViewController: UIViewController {
    let viewModel = POSViewModel()
    let presentationMode: TransactionPresentationMode!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presentationMode = .presentingViewController(
            self,
            logo: nil,
            parameters: .init(successScreenTimeout: 2)
        )
    }
            
    // user taps a button to perform a payment
    func purchaseButtonTap() async {
        await viewModel.performPayment(presentationMode)
    }
}

struct SessionsResponse: Decodable {
    let sdkData: String
}

enum POSError: Error {
    case invalidURL
}
