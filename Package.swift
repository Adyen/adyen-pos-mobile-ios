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
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.15.1/Test/AdyenPOS.xcframework.zip",
            checksum: "dd2e5ab08741eaeaf5963942f8a0eeea762d2fc088068ee8e5936356d6e64298"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.15.1/Test/ADYPOS.xcframework.zip",
            checksum: "eb07c53d737394aedad5a4808d2905548e9b1c8d27a6720d7b3fa075cdfa3812"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.15.1/Live/AdyenPOS.xcframework.zip",
            checksum: "9df340852f9add222b330944af802c5f2da9f815be9f9a06ed5f69949ebb5d48"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.15.1/Live/ADYPOS.xcframework.zip",
            checksum: "dc5e14e461d0049bca97622c287e8bbedb499f140b740a7bcc1d6c485b6b08df"
        )
    ]
)