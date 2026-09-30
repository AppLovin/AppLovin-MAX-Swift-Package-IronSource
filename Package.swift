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
        .package(url: "https://github.com/ironsource-mobile/Unity-Mediation-iAds-Swift-Package.git", exact: "9.6.1")
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
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/ironsource-adapter/AppLovinMediationIronSourceAdapter-9.6.1.0.0.zip",
            checksum: "c48482e0e1f86dd0f16b43082cb376a06f411c3eb47fb67b162af343d65f4f9d"
        )
    ]
)
