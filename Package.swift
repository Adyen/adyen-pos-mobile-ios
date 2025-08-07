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
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.9.2/Test/AdyenPOS.xcframework.zip",
            checksum: "254536220d193d48826cf3f2b511dbe9f88e221568c2cbb951855b3f04695d59"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.9.2/Test/ADYPOS.xcframework.zip",
            checksum: "1dc7a8ab993e2d6a76d67c07b0899719bc822f0929945bf4ff46b2a281e01b64"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.9.2/Live/AdyenPOS.xcframework.zip",
            checksum: "44ecada2812ee3f5aba8da88d3c16787425b930aa17b3b683755fa6956811619"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.9.2/Live/ADYPOS.xcframework.zip",
            checksum: "642946441a8f51f2400d0e5c223ee2d0be2fe51245412de247744e6cb8478425"
        )
    ]
)