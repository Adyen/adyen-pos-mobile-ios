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
            Button("Perform a Payment") {
                Task {
                    await viewModel.performPayment()
                }
            }
            Button("Perform a Reversal") {
                Task {
                    await viewModel.performRefund()
                }
            }
        }
        .transactionModal(
            with: viewModel.paymentService,
            logo: nil,
            parameters: nil
        )
        .task(viewModel.initializePOSSDK)
        .buttonStyle(.borderedProminent)
    }
}
