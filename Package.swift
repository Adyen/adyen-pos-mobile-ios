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
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/184747683.zip",
            checksum: "7e8f5c81d1f2ecf29d79f2e0a45855b9db5eab212c162341199e4640f1af3330"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/184747760.zip",
            checksum: "61aff5f017f54c49e34572737ffac61e7dee610c8b3fbc35128e08904e010765"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/184794144.zip",
            checksum: "d1e6ef139570e96975e584dbdf14cb3f9c8e80e146c1efc0175f484b941c01ea"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-beta/releases/assets/184794178.zip",
            checksum: "aef948975a1457810fc262442decca0c655fa91b37b4eaf363e2c08b7d3e588f"
        )
    ]
)

