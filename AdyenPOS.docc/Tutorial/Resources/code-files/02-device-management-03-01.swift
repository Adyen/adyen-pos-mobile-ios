//
//  POSView.swift
//  AdyenPOS
//
//  Copyright (c) 2023 Adyen N.V.
//

import SwiftUI

struct POSView: View {
    @State private var showingDeviceManagement = false
    let viewModel: POSViewModel = ...

    var body: some View {
        { ... }
        .sheet(isPresented: $showingDeviceManagement) {
            NavigationView { DeviceManagementView(paymentService: viewModel.paymentService) }
        }
    }
}
