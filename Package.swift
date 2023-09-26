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
	    url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-artifacts/releases/assets/127810762.zip",
  	    checksum: "95f75807cc326c1fddbefabbefa60a16b365f06362e87ff577c73ff993a45909"
        ),
        .binaryTarget(
            name: "ADYPOS",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-artifacts/releases/assets/127810767.zip",
   	    checksum: "27ca66f727658783f6b9f8ede3b1b3ce83e6416b0baf8984500836d1a4159140"
        )
    ]
)

