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
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/169667566.zip",
            checksum: "beacb96770974c2d1d7219889b7f0ea44f6d697c7f3f745e4afd71f5fe0ea29a"
        ),
        .binaryTarget(
            name: "ADYPOS",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/169667673.zip",
            checksum: "74353fa6c98d54bd1e1f06d716060096c10042a521d4bee02cd236b4971f80b7"
        )
    ]
)

