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
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/174719993.zip",
            checksum: "bbdd00b96fca0dc9c66f9d6ff6e3aeeed7dc589b4729826b13fdc6239074b094"
        ),
        .binaryTarget(
            name: "ADYPOS",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/174720005.zip",
            checksum: "bb3f9acd5d04b173c75a6d1d98a22b44b08a88352ca72a29e49cbdd9d6d1d0d8"
        )
    ]
)

