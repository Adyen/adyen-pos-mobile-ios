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
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/162918729.zip",
            checksum: "8a0fa241c3549e5ba99acfae13e5ba0e48e7010cd5971572ad3fc6577dc19c0f"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/162921194.zip",
            checksum: "5fd0a7c0f812d2a2217492e85f087e6f54765042b75e03284516e9d5eae99660"
        )
    ]
)

