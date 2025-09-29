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
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.11.0/Test/AdyenPOS.xcframework.zip",
            checksum: "76d5ad9fe2f3653a4bfed3e09b6d4464b8c9195bc12a1bb1349cb88ce3b6c69b"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.11.0/Test/ADYPOS.xcframework.zip",
            checksum: "cc3709d9a8edce758d4e9d557a4e6da724a4e8431ea8afff994bba267aa52152"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.11.0/Live/AdyenPOS.xcframework.zip",
            checksum: "29bda35682db8a8a6b7fe8fd3c643a132ae72121ae72691c79d9b12d5b8dc79f"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.11.0/Live/ADYPOS.xcframework.zip",
            checksum: "e46fc0d40d7cb0a7261bda64a671d8b3e60e94cffe10c5805b2c2d38b35d097c"
        )
    ]
)