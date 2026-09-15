// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationIronSourceAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AppLovinMediationIronSourceAdapter",
            targets: ["AppLovinMediationIronSourceAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/ironsource-mobile/Unity-Mediation-iAds-Swift-Package.git", exact: "9.6.0")
    ],
    targets: [
        .target(
            name: "AppLovinMediationIronSourceAdapterTarget",
            dependencies: [
                .target(name: "AppLovinMediationIronSourceAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "UnityMediationSDK", package: "Unity-Mediation-iAds-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AppLovinMediationIronSourceAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/ironsource-adapter/AppLovinMediationIronSourceAdapter-9.6.0.0.1.zip",
            checksum: "ebb8c5f171b88f769d3680e636efb4547e2927bce06f2a2313c85ad7664439cf"
        )
    ]
)
