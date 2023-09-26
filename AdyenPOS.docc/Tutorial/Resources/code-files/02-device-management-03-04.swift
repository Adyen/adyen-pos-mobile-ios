//
//  POSViewController.swift
//  AdyenPOS
//
//  Copyright (c) 2023 Adyen N.V.
//

import UIKit

class POSViewController: UIViewController {
    let viewModel: POSViewModel = { ... }
    
    func presentDeviceManagement() {
        let deviceManagementViewController = DeviceManagementViewController(
            paymentService: viewModel.paymentService
        )
        present(deviceManagementViewController, animated: true)
    }
}
