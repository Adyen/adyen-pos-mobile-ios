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
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.15.0/Test/AdyenPOS.xcframework.zip",
            checksum: "87af3a84bf3c242528d5c42b6b042cd7e6b40395f04946df128e3380adacb381"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.15.0/Test/ADYPOS.xcframework.zip",
            checksum: "2ad184ca0f04c4488a43a8cee9bacc4c95a12fa8beb9632fa6f60074bab23d6f"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.15.0/Live/AdyenPOS.xcframework.zip",
            checksum: "efc0fadf21eb8140c845807d46ee859de18c12940141d635ce0d664c09e3c805"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.15.0/Live/ADYPOS.xcframework.zip",
            checksum: "62742c4ec70586a6f4e47d95155142bd8cb811f294911cfb7307afc201a5e587"
        )
    ]
)