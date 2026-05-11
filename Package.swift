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
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.16.0/Test/AdyenPOS.xcframework.zip",
            checksum: "4d97c3ec7078db3890bea1a21e2e543839e6a5de272ffcc7228ab98724475192"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.16.0/Test/ADYPOS.xcframework.zip",
            checksum: "882401d0e1c5d9ad3de7bd8cba330d5d589458f1e90c359f5875198c84ac9bf5"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.16.0/Live/AdyenPOS.xcframework.zip",
            checksum: "4acd720a216cdee6264efd3fbf31b46e46b04ac1e60fd1773ea42d6d020f87ca"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.16.0/Live/ADYPOS.xcframework.zip",
            checksum: "be3b6517883104f8a856468b2180f6f1c29a054751d2c41dd06f5d2d8769ab15"
        )
    ]
)