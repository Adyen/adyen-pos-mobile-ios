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
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.12.0/Test/AdyenPOS.xcframework.zip",
            checksum: "c3e187b1ed94867aafa0c7b626ebc45d2a625d1789d1203f4b62865694128dc8"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.12.0/Test/ADYPOS.xcframework.zip",
            checksum: "985b4eb83ba4430d6a98fd632418ee75f8a4d2da48b829016301572e8f529831"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.12.0/Live/AdyenPOS.xcframework.zip",
            checksum: "adf7de6c465560b2882aa955202ffeb41bfa980342badb705819857bb97df7b9"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.12.0/Live/ADYPOS.xcframework.zip",
            checksum: "bb2e5a7c20dd579725c8a4ea5bae13d98900461b379c8613970f05c97c30071b"
        )
    ]
)