//
//  POSViewModel.swift
//  AdyenPOS
//
//  Copyright (c) 2023 Adyen N.V.
//

class POSViewModel {
    let paymentService = PaymentService { ... }

    init() {
        paymentService.deviceManager.delegate = self
    }
}

extension POSViewModel: DeviceManagerDelegate {
    func onDeviceDiscovered(device: AdyenPOS.Device, by manager: DeviceManager) { }
    
    func onDeviceDiscoveryFailed(with error: Error, by manager: DeviceManager) { }
    
    func onDeviceConnected(with error: Error?, to manager: DeviceManager) { }
    
    func onDeviceDisconnected(from manager: DeviceManager) { }
}
