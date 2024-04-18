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
    	    url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/162918729.zip",
      	    checksum: "8a0fa241c3549e5ba99acfae13e5ba0e48e7010cd5971572ad3fc6577dc19c0f"
        ),
        .binaryTarget(
            name: "ADYPOS",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/162921194.zip",
           checksum: "5fd0a7c0f812d2a2217492e85f087e6f54765042b75e03284516e9d5eae99660"
        )
    ]
)

