# Make transactions

Add code to make a transaction from your iOS POS app using the POS Mobile SDK.

## Overview

To enable the SDK to handle payments, you need to add code to your POS app. This code starts a transaction with:
-   A [Terminal API request](https://docs.adyen.com/point-of-sale/design-your-integration/terminal-api).
-   The payment interface you want to use: your iPhone for Tap to Pay, or the card reader.
-   The presentation mode you want to use. 

After you have added this code, transactions take place as follows: 

1. Your POS app creates a Terminal API request that is serialized to JSON, or you receive the Terminal API request from your backend.
    > Tip: To help you create Terminal API requests, we provide a **TerminalAPIKit for iOS** on [GitHub](https://github.com/Adyen/adyen-terminal-api-ios). Installation and usage instructions are in the repository's README.
2.  You pass the transaction request to the SDK.
3.  The SDK checks if the session (see <doc:Integration>) is still valid, and if necessary establishes a new session.
4.  The transaction starts on your mobile device. In the card reader solution, the SDK shows instructions for the customer on your mobile device.
5.  The SDK passes the Terminal API response to your POS app.

## Use the warmup function

To speed up initiating transactions, you can use the warmup function. This function checks for a session and any configuration changes, and prepares the proximity reader on the iPhone. As a best practice, call the warmup function:
- When the POS app starts. In other words, as soon as the app has the [active state](https://developer.apple.com/documentation/uikit/uiapplication/state).
- When the POS app was running in the background and returns to the active state.

Call the warmup function as follows:
```swift
try await paymentService.warmUp()
```

## Handle a payment
In your POS app, add code for the following steps:

1.  If you create the Terminal API payment request in your POS app, use ``PaymentService/installationId`` as `POIID` in the [MessageHeader](https://docs.adyen.com/point-of-sale/terminal-api-fundamentals#request-message-header) of the payment request. (If you create the payment request in the backend, the backend uses the `installationId` from the `/sessions` response.)

2.  Create an instance of ``Payment/Request`` using ``Payment/Request/init(data:)``, and pass the Terminal API payment request from your POS app or backend. 

    ```swift
    let transaction = try Payment.Request(data: requestData)
    ```

3.  Get a ``PaymentInterface`` from an instance of ``PaymentService``, using ``PaymentService/getPaymentInterface(with:)``. 
    
    | Value | Description |
    | ----- | ----------- |
    | `tapToPay` | Use the iPhone for Tap to Pay. |
    | `cardReader` | Use the card reader. |

    ```swift
    let paymentService = PaymentService(...)
    let paymentInterface = try await paymentService
                            .getPaymentInterface(with: .cardReader)
    ```

4. Specify a ``TransactionPresentationMode`` value that matches the UI framework, SwiftUI or UIKit, of the POS app. 

   | Value | Description |
   | ----- | ----------- |
   | `viewModifier` | For use with a SwiftUI application. The UI is embedded in a `View` as a `ViewModifier`. |
   | `presentingViewController` | For use with a UIKit application. The UI is presented on top of the provided `UIViewController`. |

   Optionally use parameters to customize the user interface.

   | Parameter | Description |
   | :----     | :----       |
   | `logo` | A bitmap image to show on your mobile device during the transaction flow. The logo is placed in a frame with a vertical height of 40 points and scaled to aspect ratio to fit in that frame. |
   | `successScreenTimeout` | Indicates how long the SDK shows the screen that indicates the transaction succeeded. If not specified, this success screen is dismissed after four seconds. You can set a time in seconds as a `TimeInterval` with a minimum of 0.5&nbsp;seconds and a maximum of 4&nbsp;seconds. |

   #### Using viewModifier (SwiftUI)
   If you use ``TransactionPresentationMode`` with `viewModifier`:
   
   1. Set `presentationMode` as follows.

      ```swift
      let presentationMode: TransactionPresentationMode = .viewModifier
      ```
      
   2. Apply the presentation mode on your SwiftUI view.
    
      ```swift
      Button(...) {
          // code to start the transaction
      })
      .transactionModal(
          with: {YOUR_INSTANCE_OF_PAYMENT_SERVICE}
          logo: logo,
          parameters: .init(successScreenTimeout: 2)
      )
      ```    

   #### Using presentingViewController (UIKit)
   If you use ``TransactionPresentationMode`` with `presentingViewController(_:logo:parameters:)`, set `presentationMode` as follows.

    ```swift
    let presentationMode: TransactionPresentationMode = .presentingViewController(
        rootViewController,
        logo: logo,
        parameters: .init(successScreenTimeout: 2)
    )
    ```

5.  Invoke ``PaymentService/performTransaction(with:paymentInterface:presentationMode:)`` on your instance of ``PaymentService``:

    ```swift
    let transactionResponse = await paymentService.performTransaction(
        with: transaction,
        paymentInterface: paymentInterface,
        presentationMode: presentationMode
    )
    ```

    The SDK now checks for a session, and starts the transaction. In the card reader solution, the SDK shows screens on your mobile device to guide the customer.

6.  Check the `transactionResponse` that you receive. This is the Terminal API response with the result of the transaction, including any errors and data you can use to generate a receipt.

7.  Pass the `transactionResponse` to your POS app.

## Handle a refund

There are two types of refund: referenced and unreferenced. The main difference is that a referenced refund is connected to the original payment, and an unreferenced refund isn't. That makes unreferenced refunds a bit riskier. For an overview of the differences, see [Refund a payment](https://docs.adyen.com/point-of-sale/basic-tapi-integration/refund-payment).

Refunds are usually not processed synchronously. When you send a request for a referenced or unreferenced refund, the Terminal API response only confirms we received the request. Unreferenced refunds, however, can be processed synchronously. This depends on the card scheme and the country where the card is used. If processed synchronously, you receive an additional field in the Terminal API response: `acquirerResponseCode`.

To learn the [outcome of a refund](https://docs.adyen.com/point-of-sale/basic-tapi-integration/refund-payment/refund-webhooks), you need to set up webhooks.

### Handle an unreferenced refund

The Terminal API request for an unreferenced refund is a payment request with an additional parameter:

-  `PaymentData.PaymentType`: **Refund**

This means you can use the same code as for [handling a payment](https://docs.adyen.com/point-of-sale/ipp-mobile/card-reader-solution/payments-reader#handle-a-payment). The only difference is the structure of the Terminal API payment request that you pass as the `requestData` to the ``Payment/Request``.

   > Tip: For the structure of the Terminal API request, see [Unreferenced refund](https://docs-admin.is.adyen.com/point-of-sale/basic-tapi-integration/refund-payment/unreferenced).


### Handle a referenced refund
The Terminal API request for a referenced refund is a reversal request. The SDK contains a dedicated function for this.
In your iOS POS app, add code for the following steps:
> Tip: For the structure of the Terminal API reversal request, see [Referenced refund](https://docs-admin.is.adyen.com/point-of-sale/basic-tapi-integration/refund-payment/referenced).

1. If you create the Terminal API reversal request in your POS app, use `PaymentService.installationId` as `POIID` in the [MessageHeader](https://docs-admin.is.adyen.com/point-of-sale/design-your-integration/terminal-api#request-message-header) of the payment request. (If you create the Terminal API reversal request in the backend, the backend uses the `installationId` from the `/sessions` response.)
2. Create an instance of `Reversal.Request` using `Reversal.Request(data:)`, and pass the Terminal API reversal request from your POS app or backend.
    ``` Swift
    let request = try Reversal.Request(data: requestData)
    ```
3. Invoke `PaymentService.performReversal(with:)` on your instance of `PaymentService`.
    ``` Swift
    let reversalResponse = await paymentService.performReversal(with: request)
    ```
    The Adyen POS Mobile SDK now checks for a session, and starts the transaction.
4. Check the `reversalResponse` that you receive. This is the Terminal API response with the result of the transaction and data you can use to generate a receipt, or with any [errors](https://docs-admin.is.adyen.com/point-of-sale/error-scenarios).
5. Pass the `reversalResponse` to your POS app.


## Related steps

-   <doc:Integration>
    
-   <doc:DeviceManagement>
    > Tip: Only for the card reader solution.

-   <doc:Entitlement>
    > Tip: Only for Tap to Pay on iPhone.

-   <doc:TapToPayGuidelines>
    > Tip: Only for Tap to Pay on iPhone.
