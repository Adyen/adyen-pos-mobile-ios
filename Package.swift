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
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.10.0/Test/AdyenPOS.xcframework.zip",
            checksum: "d06ac6e29d59d27a435010313b609ef26bd16d429bfbedb9d12bf4afa20989fc"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.10.0/Test/ADYPOS.xcframework.zip",
            checksum: "b5554750ec88f193701d4c143b2f339a9668eb14956c401ab48e7c100efc12d8"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.10.0/Live/AdyenPOS.xcframework.zip",
            checksum: "749974d2bc0d4fcdec57bfe4cc3b29c1119a73cc3bd5a90fde23485e48d6470c"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.10.0/Live/ADYPOS.xcframework.zip",
            checksum: "aeaec74a25c607c88e23cc286231e9cc0447511fc6011854f7904ff27477d828"
        )
    ]
)