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
    	    url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/161282867.zip",
      	    checksum: "0bdab84d622e166ffe9ca5ee275e6117cb7be75ab05ec6254d474d13df34ea5a"
        ),
        .binaryTarget(
            name: "ADYPOS",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/161282865.zip",
           checksum: "f5053aa379a76c140a8e419088191f3312b382f32ed8d9fa186fba3afb9b7f64"
        )
    ]
)

