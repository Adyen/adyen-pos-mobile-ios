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
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-artifacts/releases/assets/178408844.zip",
            checksum: "90d8bf2b82481f2e4f7a574dba5102c54b0ab230f52cab792ee2e76fc71893a3"
        ),
        .binaryTarget(
            name: "ADYPOS",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-artifacts/releases/assets/178408826.zip",
            checksum: "8e3ee65f6c521268f051a86a4c09b4d54ac858db870b6b85b9f808282e1939fe"
        )
    ]
)

