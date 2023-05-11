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
	    url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-artifacts/releases/assets/107390085.zip",
  	    checksum: "811cc232d54c24012306c8293f2a1163034a47e5fdbfa536aa103aa32b8deed0"
        ),
        .binaryTarget(
            name: "ADYPOS",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-artifacts/releases/assets/107390091.zip",
   	    checksum: "54fba55dc914c823a29253630dff9b3450b77f278d27a05f1a1443ad599a4955"
        )
    ]
)

