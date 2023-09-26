# Add payment device management

Manage pairing and viewing payment devices like the card reader.

## Overview

For a card reader solution (see <doc:AdyenPOS>), you need to add specific metadata to your POS app. You also need to present a device management UI for pairing your mobile device and the card reader, connecting to the card reader, and viewing card reader details.

> Important: Skip these instructions if you are building a Tap to Pay on iPhone integration.

## Manage permissions
Your POS app needs to have certain permissions for pairing the iPhone with the card reader.

-   In the `Info.plist` of your POS app, add the following keys with an appropriate explanation:
    - [`NSBluetoothAlwaysUsageDescription`](https://developer.apple.com/documentation/bundleresources/information_property_list/nsbluetoothalwaysusagedescription): this enables setting up a Bluetooth pairing between the iPhone and the card reader.
    -   [`NSCameraUsageDescription`](https://developer.apple.com/documentation/bundleresources/information_property_list/nscamerausagedescription): this enables using the phone's camera to scan the barcode of the card reader. Barcode scanning is one of the ways to select a card reader for pairing.

## Suppress Apple Pay in your POS app

> Warning: To accept payments from customers, you must suppress Apple Pay on the device that runs your mobile POS app.

It is possible that Apple Pay is enabled on the mobile device that runs your POS app. For example, if staff use their personal iPhone. When a card reader is near, the device running the POS app tries to make the payment using the Apple Pay passes that are on the device. 

To prevent this from happening, you must suppress Apple Pay in your POS app when your app is in the foreground.

1.  Contact Apple Pay at apple-pay-inquiries@apple.com and ask for an entitlement to suppress Apple Pay.
2.  When you receive confirmation that the entitlement was granted, add the entitlement to your provisioning profile on the Apple developer website.
3.  In Xcode, in the **Signing & Capabilities** settings, add the [`com.apple.developer.passkit.pass-presentation-suppression` ](https://developer.apple.com/library/archive/documentation/Miscellaneous/Reference/EntitlementKeyReference/ApplePayandPassKitEntitlements/ApplePayandPassKitEntitlements.html) key to the *.entitlements* file for your POS app.
4.  In your POS app, call [requestAutomaticPassPresentationSuppression](https://developer.apple.com/documentation/passkit/pkpasslibrary/1617078-requestautomaticpasspresentation).

    This method automatically switches between disabling Apple Pay when the POS app is in the foreground, and enabling Apple Pay when the POS app is in the background.

## Use or create a UI for device management
To use the card reader, store staff needs to pair the mobile device running the SDK with the card reader. The SDK provides a built-in UI for that.
Store staff will also want to see an overview of card readers and view details of the card reader they are using. For example, to check the battery charge level. The SDK also provides a built-in UI for that. Here are some example screens.

![Set up reader](nearby-or-scan)
![Overview of card readers](device-management-list)
![Card reader details](device-management-details)


To handle the device pairing and viewing of device details, you can:
-   Use the built-in UI through SwiftUI
-   Use the built-in UI through UIKit
-   Build a custom UI

### Use the UI through SwiftUI
To use the device management screens built into the SDK from within SwiftUI:

-   Add ``DeviceManagementView`` to the `body` property of your [View](https://developer.apple.com/documentation/swiftui/view). One of the ways to do that, is using a [.sheet](https://developer.apple.com/documentation/swiftui/view/sheet(item:ondismiss:content:)):

    ```swift
    struct MyView: View {
        @State private var showingDeviceManagement = false
        private let paymentService: PaymentService = ...

        var body: some View {
            { ... }
            .sheet(isPresented: $showingDeviceManagement) {
                NavigationView { DeviceManagementView(paymentService: paymentService) }
            }
        }
    }
    ```

### Use the UI through UIKit
To use the device management screens built into the SDK from within UIKit:

1.  Create an instance of ``DeviceManagementViewController`` using ``DeviceManagementViewController/init(paymentService:)``, passing your instance of ``PaymentService``.
2.  Present it in your preferred way. For example, with [presentViewController:animated:completion:](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621380-presentviewcontroller):

    ```swift
    class MyViewController: UIViewController {
        let paymentService = PaymentService { ... }
    
        func presentDeviceManagement() {
            let deviceManagementViewController = DeviceManagementViewController(paymentService: paymentService)
            present(deviceManagementViewController, animated: true)
        }
    }
    ```

### Custom UI
If you intend to build your own UI for device management, use the ``DeviceManagerDelegate`` protocol to obtain all the necessary information.
Refer to ``DeviceManagerDelegate`` for details.


## Avoid reconnection delays
The card reader goes to sleep after about five minutes. When you start a transaction after the reader has gone to sleep, there is a slight delay while the mobile device reconnects to the last connected reader. To avoid this delay, you can take either of the following measures:

- Before starting the transaction, wake up the card reader by calling the ``DeviceManager/connect(to:)`` function.
- Regularly refresh the connection between the mobile device and the card reader by implementing a timer that calls the ``DeviceManager/connect(to:)`` function every couple of minutes. 

> Important: Be aware that implementing a timer can significantly decrease the battery life of the card reader.

Call the `connect` method as follows, where `viewModel` is a class that contains an instance of the SDK's `PaymentService` (for an example, see our [sample app](https://github.com/Adyen/adyen-pos-mobile-ios/blob/main/POSSampleApp/SampleAppSwiftUI/MainViewModel.swift#L17)):
  
```swift
Button("Connect to last known reader") {
    if let device = viewModel.paymentService.deviceManager.knownDevices.first {
        viewModel.paymentService.deviceManager.connect(to: device)
    }
}
```

## Related steps

-   <doc:Integration>

-   <doc:Payments>
