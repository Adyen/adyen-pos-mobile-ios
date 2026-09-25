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
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.21.0/Test/AdyenPOS.xcframework.zip",
            checksum: "a36652687c321219b03a77c085a1ea27984a66a1e0a8e6d73a13cedea3750f0d"
        ),
        .binaryTarget(
            name: "ADYPOSTEST",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.21.0/Test/ADYPOS.xcframework.zip",
            checksum: "bbcaf5ba0120fe80c519c3f5976be909715498c81f9cdb75f36c7c8018265a01"
        ),
        .binaryTarget(
            name: "AdyenPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.21.0/Live/AdyenPOS.xcframework.zip",
            checksum: "b2640667857608829680b789bd5fdaf12e3660597076655dd0d147bf105df8f7"
        ),
        .binaryTarget(
            name: "ADYPOSLIVE",
            url: "https://pos-mobile.cdn.adyen.com/adyen-pos-ios/3.21.0/Live/ADYPOS.xcframework.zip",
            checksum: "9a772914311ec615da941ba2d636f1dc797bee91aa43a0de5c63ff01ee0268d5"
        )
    ]
)