// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdyenPOS",
    products: [
        .library(name: "AdyenPOS", targets: ["AdyenPOS"]),
        .library(name: "ADYPOS", targets: ["ADYPOS", "AdyenPOS"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "AdyenPOS",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/192200419.zip",
            checksum: "616e038712a07346e6fb2c373ff384931fb74e8bcd820d4e1af591764a7e631f"
        ),
        .binaryTarget(
            name: "ADYPOS",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/192200430.zip",
            checksum: "f5d3a54c2caca587f85baf520be68099050ff1432e8d08b8931dadd8ba28d305"
        )
    ]
)

