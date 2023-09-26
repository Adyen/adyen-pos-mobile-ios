//
//  POSViewModel.swift
//  AdyenPOS
//
//  Copyright (c) 2023 Adyen N.V.
//

import PassKit

class POSViewModel {
    let paymentService = PaymentService { ... }

    init() {
        PKPassLibrary.requestAutomaticPassPresentationSuppression(responseHandler: { response in
            // Proccess response.
        })
    }
}
