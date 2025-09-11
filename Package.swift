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
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.10.1/Test/AdyenPOS.xcframework.zip",
            checksum: "7e8d629ddeb79967f604e9abc247e9b3521b445cc87633a808b6636e0efcb701"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.10.1/Test/ADYPOS.xcframework.zip",
            checksum: "bd366baf368f923c143c1335523a2ecba7a796b73cb717c67da75a3eef49348f"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.10.1/Live/AdyenPOS.xcframework.zip",
            checksum: "d0c55ca085ae788e95f8a4bcac932d6c080c217314bda8038f2e1f8079834d27"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.10.1/Live/ADYPOS.xcframework.zip",
            checksum: "2eeb25f3096a90dfc8aa8ffc62b446b31f79071f9ba6f90970ee246bc4e71e3e"
        )
    ]
)