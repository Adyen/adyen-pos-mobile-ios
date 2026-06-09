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
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.17.0/Test/AdyenPOS.xcframework.zip",
            checksum: "85a65eff56fd87b266870b90d733fb78c24150083c6a7abe13d566292be23b5d"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.17.0/Test/ADYPOS.xcframework.zip",
            checksum: "853c639b45f567acc4b9f5d7b4d4158c19b69af6ff532bb04c6d2bdff93ff654"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.17.0/Live/AdyenPOS.xcframework.zip",
            checksum: "566aeb1e832412694e1cd08c950955104b5d910e0e793630ec8d9b74e24af014"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.17.0/Live/ADYPOS.xcframework.zip",
            checksum: "935e17ee508c9192a2b26471f23b02436b206763e966bfff6d140dba58634d23"
        )
    ]
)