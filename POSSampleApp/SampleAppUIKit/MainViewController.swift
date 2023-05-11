//
//  MainViewController.swift
//  SampleAppUIKit
//
//  See LICENSE folder for this sample’s licensing information.
//

import UIKit
import AdyenPOS

class MainViewController: UIViewController {
    
    var viewModel: MainViewModel!
    
    private func setupButtons() {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 8
        stackView.axis = .vertical
        
        /// Add Tap to Pay button if you are using Tap to Pay on iPhone functionality of the SDK
        let t2pButton = UIButton(
            configuration: .borderedProminent(),
            primaryAction: UIAction(title: "Tap to Pay", handler: { [weak self] _ in
                self?.onTapToPay()
            })
        )
        
        t2pButton.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(t2pButton)
        
        /// Add Card Reader button if you are using NYC1 card reader functionality of the SDK
        let cardReaderButton = UIButton(
            configuration: .borderedProminent(),
            primaryAction: UIAction(title: "Card Reader", handler: { [weak self] _ in
                self?.onCardReader()
            })
        )
        
        cardReaderButton.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(cardReaderButton)
        
        /// The device management screen is only needed if you're using the SDK for NYC1 card readers
        let deviceManagementButton = UIButton(
            configuration: .borderedProminent(),
            primaryAction: UIAction(title: "Device Management", handler: { [weak self] _ in
                self?.onDeviceManagement()
            })
        )
        
        deviceManagementButton.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(deviceManagementButton)
        view.addSubview(stackView)
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    private func onTapToPay() {
        Task {
            await viewModel.initializeTransaction(
                paymentInterface: .tapToPay,
                /// If you want your logo to appear in transaction flows you can pass it in .presentingViewController enum case
                presentationMode: .presentingViewController(self, logo: nil)
            )
        }
    }
    
    private func onCardReader() {
        Task {
            await viewModel.initializeTransaction(
                paymentInterface: .cardReader,
                /// If you want your logo to appear in transaction flows you can pass it in .presentingViewController enum case
                presentationMode: .presentingViewController(self, logo: nil)
            )
        }
        
    }
    
    /// The device management screen is only needed if you're using the SDK for NYC1 card readers
    private func onDeviceManagement() {
        present(
            DeviceManagementViewController(paymentService: viewModel.paymentService),
            animated: true
        )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtons()
        Task {
            /// Initialize the POS SDK when on viewDidLoad
            await viewModel.initializePOSSDK()
        }
    }
}
