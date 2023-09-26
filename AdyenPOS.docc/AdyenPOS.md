# POS Mobile SDK

Integrate with the POS Mobile SDK to make mobile in-person payments.

## Overview
With the POS Mobile SDK you can accept payments on an iPhone, or on a card reader that is paired with an iOS mobile device through Bluetooth. We offer two solutions: **Tap to Pay on iPhone** and **Card reader**. Both use the same SDK, which you need to integrate into your mobile POS app. The POS app must be integrated with our Terminal API.

> Note: You can use both solutions alongside each other if your POS app allows selecting the payment interface.

## Requirements
This is what's needed to integrate the SDK into your iOS POS app:

- A POS app that is integrated with our [Terminal API](https://docs.adyen.com/point-of-sale/terminal-api-fundamentals#api-structure).
- Xcode version 14.3+.
- For Tap to Pay on iPhone: an entitlement on your Apple Developer account to use Tap to Pay on iPhone.

End users will need:
- The POS app (with the SDK integrated into it) installed on their mobile device. For Tap to Pay on iPhone the mobile device must be an iPhone Xs or later with a device passcode set up on the iPhone to unlock it.
- iOS version:

  | iOS version on device with POS app | SDK integrated in the POS app|
  | :---- | :---- |
  | iOS 16.4 | The device can use all functionality from the POS app, including the SDK functionality. |
  | iOS 13 - 16.3.1 | The device can use the POS app, but not the SDK functionality. |
  | iOS 12 or earlier | The device can't run the POS app if the SDK is integrated into it. |


- For the card reader solution: an NYC1 card reader from Adyen.

## Tap to Pay on iPhone
With our Tap to Pay on iPhone solution you can accept contactless in-person payments using an iPhone as the payment interface, and process these payments on the Ayden payments platform.

To complete a payment, customers tap the iPhone with their payment card or with their phone (or other device) that has a digital wallet like Apple Pay.

Before you start integrating this solution:
- Make sure your POS app is integrated with our Terminal API.
- Check the **Requirements** above.
- Have a look at these resources for Tap to Pay on iPhone:
  - [Demo](https://developer.apple.com/tap-to-pay/media/LaserTag_Main_Film_Shopify_960x540.mp4)
  - [Apple developer page](https://developer.apple.com/tap-to-pay/)
  - [Frequently asked questions](https://register.apple.com/tap-to-pay-on-iphone/faq.html)

### How it works
This is how the solution's components work together:

1. Your POS app creates a Terminal API payment request.
2. Your POS app passes the payment request to the SDK.
3. The SDK passes the request to the Tap to Pay on iPhone component.
4. The customer completes the payment by tapping their card or mobile device on the iPhone.
5. The SDK passes the Terminal API payment response to the POS app.

### Steps to take
To set up this solution:
1. <doc:Entitlement>.
2. <doc:Integration>.
2. <doc:Payments>.
4. <doc:TapToPayGuidelines>.

## Card reader solution
With our card reader solution you can accept mobile in-person payments using a card reader as the payment interface, and process these payments on the Adyen payments platform.

The card reader is paired with an iOS mobile device through Bluetooth. On the iOS mobile device, payment requests are initated from a POS app. On the card reader, the customer can tap, insert, or swipe their card, or use a digital wallet like Apple Pay to complete the payment.

Before you start:
- Make sure your POS app is integrated with our Terminal API.
- Check the **Requirements** above.
- Order a test NYC1 card reader and a test card from Adyen.

### How it works
This is how the solution's components work together, after your mobile device and the card reader have been paired:

1. Your POS app creates a Terminal API payment request.
2. Your POS app passes the payment request to the SDK.
3. The SDK initiates the card reader to take the transaction.
4. The customer completes the payment by tapping their card or mobile device on the card reader, or by inserting or swiping their card.
5. The SDK passes the Terminal API payment response to the POS app.

### Steps to take
To set up this integration:
1.  <doc:Integration>.
2.  <doc:Payments>.
3.  <doc:DeviceManagement>.

## Objective-C compatibility
If your POS app requires the POS Mobile SDK to be compatible with Objective-C, link the `ADYPOS` package product to your app target instead of `AdyenPOS`. The integration process is the same. The only difference is that the public symbols are prefixed with `ADY`. For example, `PaymentService` is called  `ADYPaymentService`.

## Topics

### Integration

- <doc:Integration>
- ``PaymentService``

### Transactions

- <doc:Payments>
- ``Payment``
- ``PaymentInterface``
- ``TransactionPresentationMode``

### Payment device management

- <doc:DeviceManagement>
- ``DeviceManagementView``
- ``DeviceManagementViewController``
- ``DeviceManager``
- ``DeviceManagerDelegate``

### Tap to Pay on iPhone
- <doc:Entitlement>
- <doc:TapToPayGuidelines>
