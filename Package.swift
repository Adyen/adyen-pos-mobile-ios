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
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.22.1/Test/AdyenPOS.xcframework.zip",
            checksum: "38f851bd8bbf64adaaab7086bcfe1a7cd94710c44dd8bec9557dd78cc76f1400"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.22.1/Test/ADYPOS.xcframework.zip",
            checksum: "5156fcc0fc3a2fbecc64f19020df810798e0f726759b95f5d622b4008088c725"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.22.1/Live/AdyenPOS.xcframework.zip",
            checksum: "bce5c028b2f1f47e0171206afd3f6ef001822a34f5b01098d0ad481024ea6396"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.22.1/Live/ADYPOS.xcframework.zip",
            checksum: "6fa1bc5401bc9a2e375bbc75a9c13f64ef9af47d24b3b2b88f8cacab1179a21e"
        )
    ]
)