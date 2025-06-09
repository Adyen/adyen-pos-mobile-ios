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
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.8.0/Test/AdyenPOS.xcframework.zip",
            checksum: "0151cdd705f12f4bc0d0292cf4cd8a168f8ba66eb424142a42bd04faa6857a29"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.8.0/Test/ADYPOS.xcframework.zip",
            checksum: "d3bf2f22d05959d95b713383b239d92b8b3eecdb6c3a39898caba5fbf8231dd3"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.8.0/Live/AdyenPOS.xcframework.zip",
            checksum: "315d8fea1f267bdb6ec6f524a200567526db80d483af638610e8eaff0a334a88"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.8.0/Live/ADYPOS.xcframework.zip",
            checksum: "a4c803639ea6f5c3272bb4aab27c3de9ab0b79654b3dfe578130b88f6ebd2c0d"
        )
    ]
)