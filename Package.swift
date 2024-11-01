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
            url: "https://github.com/Adyen/adyen-pos-mobile-ios-artifacts/releases/download/3.3.0-RC13/AdyenPOSTest.xcframework.zip",
            checksum: "e1a139fb68f062158a97dc3fb6dbeccceb19723361ceae0ae18f5f02565526d4"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://github.com/Adyen/adyen-pos-mobile-ios-artifacts/releases/download/3.3.0-RC13/ADYPOSTest.xcframework.zip",
            checksum: "8c54367fa52e09a48c625022969113f76f124cf44b4f64f1c2f125a692dd9399"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://github.com/Adyen/adyen-pos-mobile-ios-artifacts/releases/download/3.3.0-RC13/AdyenPOSLive.xcframework.zip",
            checksum: "c36dd3ad4b849691a2dff15ba8eccf3d1e7f97dca930cf87f69db57485862870"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://github.com/Adyen/adyen-pos-mobile-ios-artifacts/releases/download/3.3.0-RC13/ADYPOSLive.xcframework.zip",
            checksum: "1541452cc4246ba4c7bd1b52576d5e186a134abeb62ef84e753019ceed8b284a"
        )
    ]
)
