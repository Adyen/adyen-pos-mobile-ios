# Integrate the POS iOS SDK

Update your code to integrate the POS Mobile SDK in your iOS POS app.

## Overview
To prepare for accepting payments through the SDK, take the following steps:
1.  Add the POS Mobile SDK to your Xcode project that contains your POS app.
2.  Add code to establish a session.
3.  Add code to enable payments through the SDK.

## Objective-C compatibility
If your POS app requires the POS Mobile SDK to be compatible with Objective-C, link the `ADYPOS` package product to your app target instead of `AdyenPOS`. The integration process is the same. The only difference is that the public symbols are prefixed with `ADY`. For example, `PaymentService` is called  `ADYPaymentService`.

## Add the POS Mobile SDK
You can add the SDK to your POS app in one of the following ways:

- Using a Swift Package Manager remote package.
- Using a Swift Package Manager local package.
- Manually.

### Add using a Swift Package Manager remote package

With this method of adding the SDK to your POS app, we send you a secret access token that allows you to download the SDK from a remote server. After downloading the SDK, you add it as a package dependency to your Xcode project.

1. Reach out to your Adyen contact to get your access token.

   !!!! Do not share this token in any publicly accessible code or area where unauthorized users can find it.

2. Save your access token in a [.netrc](https://www.gnu.org/software/inetutils/manual/html_node/The-_002enetrc-file.html) file:
   
   1. Check if you already have `.netrc` file in your your home directory. If you don't, create a plain text file with that name in your home directory (`~/.netrc`).
      
   2. Add the following content to your `.netrc` file, where `password` is the access token you received from your Adyen contact.

      ```raw
      machine api.github.com
      login adyen
      password YOUR_SECRET_ACCESS_TOKEN
      ```
      
   3. Make sure the `.netrc` file has the following file system permission: **0600**.
    
3. Add the POS Mobile SDK as a package dependency to your Xcode project:

   1. In your Xcode project or workspace, go to **File** > **Swift Packages** > **Add Package Dependency**.
      
   1. Enter the **URL** `https://github.com/Adyen/adyen-pos-mobile-ios` and select **Add Package**. The SDK is now fetched and loaded.
      
   1. Select **AdyenPOS** (or **ADYPOS** for Objective-C compatibility) and then select **Finish**.
    
4.  In your code, `import AdyenPOS` or `#import "ADYPOS/ADYPOS.h"`.


### Add using a Swift Package Manager local package
In case of a local package, add the POS Mobile SDK as a package dependency to your Xcode project following the instructions in the [Swift Package Manager documentation](https://developer.apple.com/documentation/swift_packages/adding_package_dependencies_to_your_app).

Enter the local path to the directory as follows:
```
file:///{...}/adyen-pos-package-ios
```

### Add manually
If you are integrating the **XCFramework** directly:

1.  In your Xcode project, select **File** > **Add Files** and select the POS Mobile SDK.
2.  Check that the application target is linked to `AdyenPOS` (or `ADYPOS` for Objective-C compatibility).

## Establish a session
The SDK has to communicate in a secure way with the Adyen payments platform. To enable this, you must integrate a server-to-server `/possdk/v68/sessions` request to create a session. Your POS app needs to call your backend to trigger this `/sessions` request and get the session data.
The SDK uses the session data from the `/sessions` response to register with our payments platform. Because the session expires after some time, the SDK checks regularly if it needs to establish a new session.

![Establishing a session in the payment flow](ipp-mobile-ios-sdk-flow)

### API key and roles
To authenticate your `/sessions` requests, you need an [API credential](https://docs.adyen.com/development-resources/api-credentials). This API credential must have an [API key](https://docs.adyen.com/development-resources/api-credentials#generate-api-key) and the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
- Checkout webservice role. This role is assigned by default when the API key is created.

### Make a `/sessions` request
To let your backend establish a session:

1.  From your backend, make a `POST /possdk/v68/sessions` request. In the request body, specify:
    - `merchantAccount`: the unique identifier of your [merchant account](https://docs.adyen.com/point-of-sale/determine-account-structure#request-merchant-accounts).
    - `store` (optional): the unique identifier of the [store](https://docs.adyen.com/point-of-sale/determine-account-structure#create-stores) that you want to process payments for.
    - `setupToken`: the setup token provided by the SDK through the ``PaymentServiceDelegate/register(with:)`` callback of ``PaymentServiceDelegate``.

    ``` bash
    curl https://checkout-test.adyen.com/checkout/possdk/v68/sessions \
    -H "Content-Type: application/json" \
    -H "x-API-key: YOUR_API_KEY" \
    -X POST \
    -d '{
        "merchantAccount": "YOUR_MERCHANT_ACCOUNT",
        "store": "YOUR_STORE_ID",
        "setupToken": "SESSION_TOKEN"
    }'
    ```

2.  When you receive the response:
    - Check that you get a **201 Created** HTTP status code.
    - Return the `sdkData` to your POS app. 
    - If you create the Terminal API request on your backend, save the `installationId` and use it as `POIID` in the [MessageHeader](https://docs.adyen.com/point-of-sale/terminal-api-fundamentals#request-message-header) of the payment request.

    ```json
    {
        "id": "SESSION_ID",
        "installationId": "INSTALLATION_ID",
        "merchantAccount": "YOUR_MERCHANT_ACCOUNT",
        "store": "YOUR_STORE_ID",
        "sdkData": "SDK_DATA_BLOB"
    }
    ```

## Enable payments
To enable the payments functionality of the POS Mobile SDK, add code to your POS app:

1.  Implement the ``PaymentServiceDelegate`` protocol. Below is an example of how you could do that.

    ```swift
    struct SessionsResponse: Decodable {
        let sdkData: String
    }

    class MyPaymentServiceDelegate: PaymentServiceDelegate {
        internal func register(
            with setupToken: String
        ) async throws -> String {
            /// Make a call to your backend to trigger a `/sessions` request, supplying the provided `setupToken`.
            let request = URLRequest(url: URL(string: "{ADDRESS_OF_YOUR_BACKEND_API}")!)
            let (data, _) = try await URLSession.shared.data(for: request)
            let response = try JSONDecoder().decode(SessionsResponse.self, from: data)
            return response.sdkData
        }
    }
    ```

    The actual structure of the `SessionsResponse` depends on your backend implementation.

2.  Create an instance of ``PaymentService`` with the ``PaymentService/init(delegate:)`` initializer and pass the delegate object. Make sure you keep a strong reference to the payment service instance so that it is retained for the duration of the transaction. Also make sure your `delegate` is strongly referenced, because the ``PaymentService`` keeps a weak reference to the `delegate`.

    ```swift
    let paymentService = PaymentService(delegate: myPaymentServiceDelegate)
    ```

3.  Make sure that the ``PaymentServiceDelegate`` can provide new `sdkData` at any time.
    If there is no session or the session has expired, the delegate is called using the ``PaymentServiceDelegate/register(with:)`` callback. Using the provided `setupToken` you need to get the `sdkData` through your backend and return it. For instructions, see *Establish a session*.

4. Optional. Verify that the callback behaves as expected by calling the warmup function.

    > Tip: The warmup function checks for a session and any configuration changes, and prepares the proximity reader on the iPhone.

    ```swift
    try await paymentService.warmUp()
    ```

## Related steps

-   <doc:Payments>

-   <doc:DeviceManagement> 
    > Tip: Only for the card reader solution.

-   <doc:Entitlement>
    > Tip: Only for Tap to Pay on iPhone.

-   <doc:TapToPayGuidelines>
    > Tip: Only for Tap to Pay on iPhone.
