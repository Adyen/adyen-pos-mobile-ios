//
//  MainView.swift
//  SampleAppSwiftUI
//
//  See LICENSE folder for this sample’s licensing information.
//

import SwiftUI
import AdyenPOS

struct MainView: View {
    
    @State private var showingDeviceManagement = false
    
    let viewModel: MainViewModel
    
    var body: some View {
        VStack {
            /// Add Tap to Pay button if you are using Tap to Pay on iPhone functionality of the SDK
            Button("Tap to Pay") {
                Task {
                    await viewModel.initializeTransaction(
                        paymentInterface: .tapToPay,
                        presentationMode: .viewModifier
                    )
                }
            }
            
            /// Add Card Reader button if you are using NYC1 card reader functionality of the SDK
            Button("Card Reader") {
                Task {
                    await viewModel.initializeTransaction(
                        paymentInterface: .cardReader,
                        presentationMode: .viewModifier
                    )
                }
                
            }
            
            /// The device management screen is only needed if you're using the SDK for NYC1 card readers
            Button("Device Management") {
                showingDeviceManagement.toggle()
            }
        }
        .buttonStyle(.borderedProminent)
        /// If you want your logo to appear in transaction flows you can pass it in .transactionModal ViewModifier
        /// If you use TransactionPresentationMode.viewModifier, apply it on your SwiftUI view as follows:
        .transactionModal(with: viewModel.paymentService, logo: nil)
        /// Initialize the POS SDK before the view appears
        .task(viewModel.initializePOSSDK)
        /// To add the DeviceManagementView to the body property of our View, you can use a .sheet:
        .sheet(isPresented: $showingDeviceManagement) {
            NavigationView {
                DeviceManagementView(paymentService: viewModel.paymentService)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(viewModel: .init())
    }
}
