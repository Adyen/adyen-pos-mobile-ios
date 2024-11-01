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
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-artifacts/releases/assets/203402762.zip",
            checksum: "12ba998b8e2bf7e470bc0ebdedfe42e459cb53ce69c5961d9dc19576db48fab2"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-artifacts/releases/assets/203402779.zip",
            checksum: "03e309d9f94dfd19d11969777806989eb4d07a3ef47e3b7de0f263fb9c8028f7"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-artifacts/releases/assets/203402745.zip",
            checksum: "0ea981e7596f99fae23482cb396378bc373a4dd742b716701c8b5aec25be9968"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-artifacts/releases/assets/203402758.zip",
            checksum: "a80c074ae9bd09359b47bf36812b63c33e083256d1e676fa73141979f8575c6e"
        )
    ]
)
