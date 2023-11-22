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
	    url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-artifacts/releases/assets/136931355.zip",
  	    checksum: "4987582ceee84c6d14bc57e60c0f508a633cc447b0bd393903aeeaef69476b1f"
        ),
        .binaryTarget(
            name: "ADYPOS",
            url: "https://api.github.com/repos/Adyen/adyen-pos-mobile-ios-artifacts/releases/assets/136931361.zip",
   	    checksum: "929dc8e5956c5f4418b43bed2ccdca0c03372265b0477a67abe6de3ceb814d0c"
        )
    ]
)

