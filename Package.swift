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
    	    url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/163141934.zip",
      	    checksum: "9bde6d52cb404f9152076ffca65d45fed433d0409ee1b587fd272c4e658ba5fb"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/163146281.zip",
            checksum: "7abd77a18b3f33db9dcf342af13853b09e9e9749dcf598bc2b41c778a69c8d9b"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/163605976.zip",
            checksum: "63222e80689062bd9f1c3a67554b92af9e8a6ed6a318a7b29283baf012fc670b"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/163606016.zip",
            checksum: "4a71e4e68060a66f6c553e6a71bebf4928e0500ef418560daa2a570a2e5a3b19"
        )
    ]
)

