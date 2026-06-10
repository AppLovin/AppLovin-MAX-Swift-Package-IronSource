# AppLovin MAX - iOS IronSource (LevelPlay) Mediation Adapter

The AppLovin MAX IronSource / LevelPlay mediation adapter for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 13.0+
- Xcode 15.0+
- AppLovin MAX iOS SDK 13.0.0+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/AppLovin/AppLovin-MAX-Swift-Package-IronSource
   ```
3. Select **Exact Version** and enter the encoded version (e.g. `9040100.0.0` for adapter version `9.4.1.0.0`).
4. Add the `AppLovinMediationIronSourceAdapter` product to your app target.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package-IronSource.git",
        exact: "9040100.0.0"
    )
]
```

## Included dependencies

- [`AppLovinSDK`](https://github.com/AppLovin/AppLovin-MAX-Swift-Package) (>= 13.0.0)
- [`UnityMediationSDK`](https://github.com/ironsource-mobile/Unity-Mediation-iAds-Swift-Package) (pinned to the version certified for this adapter release)

## More information

- [AppLovin MAX iOS Integration Guide](https://support.axon.ai/en/max/ios/overview/integration)
