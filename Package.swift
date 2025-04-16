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
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.7.0/Test/AdyenPOS.xcframework.zip",
            checksum: "7708616e9a6242cbcd11011de5e84cfc37afa00b2a8d7ae6a00f0e059d053eae"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.7.0/Test/ADYPOS.xcframework.zip",
            checksum: "9c9856e92f8f14386df719c7140cb7dcd6130018bafde28361ad8db1da1a7e6a"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.7.0/Live/AdyenPOS.xcframework.zip",
            checksum: "866f17850d8b70e8fdc510536cdf2fc1e1b2037252bbdedacaf54a583de48029"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.7.0/Live/ADYPOS.xcframework.zip",
            checksum: "d66c95909921e32c4acc5b630e3247530f358a7f8a3d233a13f657f78074fe96"
        )
    ]
)