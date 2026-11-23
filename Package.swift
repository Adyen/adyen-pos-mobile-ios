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
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.23.0/Test/AdyenPOS.xcframework.zip",
            checksum: "125e94be6fd8b995b818ddd79bc2f25f195047ebf73703f601c6809a1b4cb060"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.23.0/Test/ADYPOS.xcframework.zip",
            checksum: "826dff67bb492818ab7a61c48f08bc75217c1ffbd4129c7d241989d90ad1ec0b"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.23.0/Live/AdyenPOS.xcframework.zip",
            checksum: "fdb9940e034c115295ff58ab925986b225398fb9f1c6c1cc7bb4880fb7c07d25"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.23.0/Live/ADYPOS.xcframework.zip",
            checksum: "94323a55a81875c069746407ab7080adac88f520afaf0799e374deb0a3e488dc"
        )
    ]
)