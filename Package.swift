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
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.6.0/Test/AdyenPOS.xcframework.zip",
            checksum: "158721719f2dd6ff5f4e1477aab906f13c293675794ab07edd2bfb4d3a8e616a"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.6.0/Test/ADYPOS.xcframework.zip",
            checksum: "04d96dbcff8b0729809f7c3fcd6709fa1c1fb39f601ec875b5908be82c3d1450"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.6.0/Live/AdyenPOS.xcframework.zip",
            checksum: "4faf044818c10b5713baf6619de4118e045748ee6771abf1d29dacbbf2dfb40a"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.6.0/Live/ADYPOS.xcframework.zip",
            checksum: "9548c5fb07deb2f6324ae526945f985c6edb22614c15e20c66a77f048084a777"
        )
    ]
)