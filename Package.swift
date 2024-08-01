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
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/183249186.zip",
            checksum: "395af178b88a77473e0e7ad9cae6944414a90890b0a410e3cc7bceedeaaf4187"
        ),
        .binaryTarget(
            name: "ADYPOS",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/183249202.zip",
            checksum: "47e4585fab7ba678220705472c07402f8da4e6d16d2467def273450fdefc01c9"
        )
    ]
)

