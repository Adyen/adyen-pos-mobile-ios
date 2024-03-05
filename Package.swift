// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdyenPOS",
    products: [
        .library(name: "AdyenPOS", targets: ["AdyenPOS"]),
        .library(name: "ADYPOS", targets: ["ADYPOS", "AdyenPOS"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "AdyenPOS",
	    url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-artifacts/releases/assets/154823847.zip",
  	    checksum: "b9713fb3f4cf592f026366e50eebb4badfbb7a0bda8a520b7ffaf3da92ca298e"
        ),
        .binaryTarget(
            name: "ADYPOS",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-artifacts/releases/assets/154823853.zip",
   	    checksum: "3689b3718f780997408705748eef2ced222c967140d2520f27868ea2f2e99faa"
        )
    ]
)

