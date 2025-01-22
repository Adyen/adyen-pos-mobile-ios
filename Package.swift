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
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.3.1/Test/AdyenPOS.xcframework.zip",
            checksum: "1550ca2e9338ebdd175ddaf769516485f90be785cbcf85567a1163adef9af5ed"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.3.1/Test/ADYPOS.xcframework.zip",
            checksum: "0fa157fc47a74cd165b4b88f96b6d9292c2d1eb8d13b1b1365189eea72fa246e"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.3.1/Live/AdyenPOS.xcframework.zip",
            checksum: "33590ddd062401f84e21f4b46c118c91124f629bfe985289650f804f0c30fb98"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.3.1/Live/ADYPOS.xcframework.zip",
            checksum: "a3d70b347b88cd1d239afe104ef6ee3621cf3b7dae4aa7097993b7e9d3846d32"
        )
    ]
)