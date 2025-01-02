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
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-artifacts/releases/assets/217399087.zip",
            checksum: "c0755eca1517cd62cddb99716bd91d18f57aac27700966403cb38b566851b0e0"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-artifacts/releases/assets/217399096.zip",
            checksum: "1fb439617205f2d6223ee67006791b734d42aaf88f4a33502803e7ae7aa4de26"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-artifacts/releases/assets/217399077.zip",
            checksum: "e70a39b26cbc3ece881a755b920897f11364a3904173f064af4ab7558240c17c"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-artifacts/releases/assets/217399082.zip",
            checksum: "9fb070410eb3c08eec8681344e9f30855be5e7f43743c0acde78fe04125c0b87"
        )
    ]
)
