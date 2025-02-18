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
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.5.0/Test/AdyenPOS.xcframework.zip",
            checksum: "fde1576ba2b8c5e52e071963a30e08203d8fd86dc05c7ee5ce785206cc96e565"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.5.0/Test/ADYPOS.xcframework.zip",
            checksum: "2566bc59fc30530186f59ced88f01dbd3c995cc6e351485c10cd55424a1f2273"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.5.0/Live/AdyenPOS.xcframework.zip",
            checksum: "86120ea3f92218e24e98af49169bc3241cdfa905a53c425f8e9b3d5731cf6aad"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.5.0/Live/ADYPOS.xcframework.zip",
            checksum: "3daff0ae5b8edc817a452818184c4ec4504b84ab51463aa86c184dc1de521090"
        )
    ]
)