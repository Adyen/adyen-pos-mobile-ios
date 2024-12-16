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
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/213692527.zip",
            checksum: "4cb81e2bccc40743351ea4f422ffcaf3c8b570b5d45bd8abaa55ed30bb27b647"
        ),
        .binaryTarget(
            name: "ADYPOS",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/213692538.zip",
            checksum: "f1fe5dfc6de80692ea2e00bed99fdf1065f47d2a4df8037157da3183a43a5469"
        )
    ]
)

