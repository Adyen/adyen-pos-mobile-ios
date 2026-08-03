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
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.19.0/Test/AdyenPOS.xcframework.zip",
            checksum: "c23eeab65a683ab94d1fbaa5f495b14020bc8400843fca4dbbf6ac77a30f6cab"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.19.0/Test/ADYPOS.xcframework.zip",
            checksum: "1dc2ebe3f5f576a918be0199fff208d194198fba1e1f24a1319fc106276309f6"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.19.0/Live/AdyenPOS.xcframework.zip",
            checksum: "cbeb8cb2d5a14f2af231e7b0c750bbc140369ed149915ae7dc258bccee7227f9"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.19.0/Live/ADYPOS.xcframework.zip",
            checksum: "840784f2a09e02e38b7ee4daea4ddf637b66eb7a4509a0fd7451d885bc6eab20"
        )
    ]
)