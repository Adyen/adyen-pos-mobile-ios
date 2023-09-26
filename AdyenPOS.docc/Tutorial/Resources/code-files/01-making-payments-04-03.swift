//
//  POSView.swift
//  AdyenPOS
//
//  Copyright (c) 2023 Adyen N.V.
//

import SwiftUI
import AdyenPOS

struct POSView: View {
    
    let viewModel: POSViewModel
    
    var body: some View {
        VStack {
            Button("Perform a Payment") {}
            Button("Perform a Reversal") {}
        }
        .transactionModal(with: viewModel.paymentService, logo: nil)
        .task(viewModel.initializePOSSDK)
        .buttonStyle(.borderedProminent)
    }
}
