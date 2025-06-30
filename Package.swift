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
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.9.0/Test/AdyenPOS.xcframework.zip",
            checksum: "715ccb8e8900983d7c4f306915445b15202cc43dca85192798065050e0988e96"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.9.0/Test/ADYPOS.xcframework.zip",
            checksum: "4f56f1c1884bdb4590ce83963b49f14a0e16b5275531d0602e66089b1dabfdc7"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.9.0/Live/AdyenPOS.xcframework.zip",
            checksum: "8c0d1a4ed3a29f8157a5e2f7756cecdeb013eed2b892e385bc3c21df02268c1e"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.9.0/Live/ADYPOS.xcframework.zip",
            checksum: "9a399c27b9f7526b50831f3fbe043bb67988fdeb9a906a40679b12a388e749e5"
        )
    ]
)