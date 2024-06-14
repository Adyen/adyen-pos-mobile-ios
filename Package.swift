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
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-artifacts/releases/assets/173660716.zip",
            checksum: "9e0e10a6bc36a529839fc02798327ffdea29039d351edfab5a241b6779c0bb54"
        ),
        .binaryTarget(
            name: "ADYPOS",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-artifacts/releases/assets/173660777.zip",
            checksum: "dc4cb4ebb693b9a95f376d4bdba0f6ea7a30e245ce63822d493ef80714f035a8"
        )
    ]
)

