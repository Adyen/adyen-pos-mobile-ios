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
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/181976666.zip",
            checksum: "8444b9d06c0a13579d7170870c4da613801a8d97a5d1210f40d2ad0ea771e5a4"
        ),
        .binaryTarget(
            name: "ADYPOS",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/181976683.zip",
            checksum: "e3af19ff7f8341478ee4facb6c6ff20c7fe2f04d83131fa34b8e31762df0d2d9"
        )
    ]
)

