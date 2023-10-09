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
	    url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-artifacts/releases/assets/129744169.zip",
  	    checksum: "0b9b3eaccc25858232e3b6f7b93e40df313fb405d8f4092d984698121baf3dd3"
        ),
        .binaryTarget(
            name: "ADYPOS",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-artifacts/releases/assets/129744173.zip",
   	    checksum: "29d5a4936e918c70e6fbb5860ed69f4b5a19a6b8e4d873e235934026c4838022"
        )
    ]
)

