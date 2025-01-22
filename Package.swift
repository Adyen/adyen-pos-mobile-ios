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
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-artifacts/releases/assets/222478150.zip",
            checksum: "fafe644aef30798624b1570b1f353150a58d0cc7a9f55ce7a11822c672603ce7"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-artifacts/releases/assets/222478188.zip",
            checksum: "6bdc7cfbe049f8a32cd26b685c86e8221a81fd5122997c93e0b7077a27e6a106"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-artifacts/releases/assets/222478126.zip",
            checksum: "81a2491aeb5de53a74ec809d9237da0353283262e25b31ad8122beed151a3a59"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-artifacts/releases/assets/222478143.zip",
            checksum: "c47911815ba21a821968b363b6cd17c513188327a87d3c283b8a7902d3d50968"
        )
    ]
)
