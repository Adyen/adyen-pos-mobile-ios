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
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/213699110.zip",
            checksum: "d97b82e93dd4fa318d8fa9c572e611a1ad851ee6f7ba74a798338051ac9102fa"
        ),
        .binaryTarget(
            name: "ADYPOS",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/213699128.zip",
            checksum: "e280b70c4ba6c3352051ad7cf68c20dacce9c53da4d9c0a2cf4eff97e92f7b92"
        )
    ]
)

