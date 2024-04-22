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
    	    url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/163605976.zip",
      	    checksum: "63222e80689062bd9f1c3a67554b92af9e8a6ed6a318a7b29283baf012fc670b"
        ),
        .binaryTarget(
            name: "ADYPOS",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/163606016.zip",
            checksum: "4a71e4e68060a66f6c553e6a71bebf4928e0500ef418560daa2a570a2e5a3b19"
        )
    ]
)

