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
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.18.0/Test/AdyenPOS.xcframework.zip",
            checksum: "49dbca710bb417c97af1e50eda56d8f5f842c4216aeaaefde42e4a641e0c4444"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.18.0/Test/ADYPOS.xcframework.zip",
            checksum: "2c301c8d15bfc974f44a352b373fe73c02e3f52cd307a51b6581c051005c4538"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.18.0/Live/AdyenPOS.xcframework.zip",
            checksum: "ca99dfdd3be4c5259db6f94826bad551752feffff7d7ddb7e6b90a50b41004ff"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.18.0/Live/ADYPOS.xcframework.zip",
            checksum: "ddbb779901a258f428b80c1712dadaf93ba6fabba0ed75b6b82c9523ad500593"
        )
    ]
)