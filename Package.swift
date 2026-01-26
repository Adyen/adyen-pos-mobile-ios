// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdyenPOS",
    products: [
        .library(name: "AdyenPOSTEST", targets: ["AdyenPOSTEST"]),
        .library(name: "ADYPOSTEST", targets: ["ADYPOSTEST", "AdyenPOSTEST"]),
        .library(name: "AdyenPOSLIVE", targets: ["AdyenPOSLIVE"]),
        .library(name: "ADYPOSLIVE", targets: ["ADYPOSLIVE", "AdyenPOSLIVE"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "AdyenPOSTEST",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.14.0/Test/AdyenPOS.xcframework.zip",
            checksum: "e2736279941fd9d70623a09fdc4a9a3f09d88bd9ef4ded02afc305e5acddd58f"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.14.0/Test/ADYPOS.xcframework.zip",
            checksum: "868ce9e3f8e745878d8f9c2ec6cc1481b90d226ef162b32d395dea22acb6e0bb"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.14.0/Live/AdyenPOS.xcframework.zip",
            checksum: "ad5f988cbc838ba4d7300ceef95a3feb0d301c669281381b6e959b88599a1b11"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.14.0/Live/ADYPOS.xcframework.zip",
            checksum: "6dbac3e2b6be5f78ceef0c2ec6bb4694ee4d60af9a66adc9a08011cb1ec4d420"
        )
    ]
)