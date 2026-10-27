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
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.22.0/Test/AdyenPOS.xcframework.zip",
            checksum: "70cc8bb6284a6f50826ea31338ed4f390a9f3a6798c849bde73c00e56820ab16"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.22.0/Test/ADYPOS.xcframework.zip",
            checksum: "c4646cfca04a9972cafaf5b6f234f64d42ca9b37e26ed28c3731fcc4afc1880c"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.22.0/Live/AdyenPOS.xcframework.zip",
            checksum: "229810fcc3b05e9b09630bf15fa657ad931ed573e964100e3ca9ffd2cc4c9544"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.22.0/Live/ADYPOS.xcframework.zip",
            checksum: "0b9c815ae4e48cb6fba6695b0a89f1a630366b707ac5ab73e4da192751105f1c"
        )
    ]
)