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
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.9.1/Test/AdyenPOS.xcframework.zip",
            checksum: "1aa99585b24dd45a1d83f4ccf7e16589c5feaecae2d46147a3d61f73abc7140f"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.9.1/Test/ADYPOS.xcframework.zip",
            checksum: "86fb8f6d8ac46818916b686b3a0c349f88ddf35b4b415eaddc1f504fd1f1cb77"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.9.1/Live/AdyenPOS.xcframework.zip",
            checksum: "8680dbd52a373293d1f99412bac31f6b8bb9cf507defb9e34de71b9bf7fd54da"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.9.1/Live/ADYPOS.xcframework.zip",
            checksum: "fe473684539e0782c2ff5bf062cdae1b137fdf1d592d597b69dfcb88e58c93aa"
        )
    ]
)