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
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.11.1/Test/AdyenPOS.xcframework.zip",
            checksum: "0998c4bc80c6275529f25ffecfac7b8d2df9d01cc64feb195f79709615c584a9"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.11.1/Test/ADYPOS.xcframework.zip",
            checksum: "b4e9162f2271fa1f1497aef5baaa5146ddf61cfdd5908b682d84199d6a23ffec"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.11.1/Live/AdyenPOS.xcframework.zip",
            checksum: "1c708f3361bd5b3018d3f709c43a6265c4d9263c6eb861fe51f6d6a2ebf2f085"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.11.1/Live/ADYPOS.xcframework.zip",
            checksum: "1bbdcc73e0a4b37eba4435a935833cd63b8cdb5a97b1a3d456ba96752d0ed854"
        )
    ]
)