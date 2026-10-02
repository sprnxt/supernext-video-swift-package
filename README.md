# GreenVideoSDK for iOS

Swift Package distribution of the Green Video player SDK.

## Requirements

- iOS 15.0+
- Xcode 26 or later

## Installation

In Xcode choose **File → Add Package Dependencies…** and enter:

```
https://github.com/sprnxt/supernext-video-swift-package
```

Or add it to `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/sprnxt/supernext-video-swift-package", from: "2.0.0")
],
targets: [
    .target(name: "MyApp", dependencies: [
        .product(name: "GreenVideoSDK", package: "supernext-video-swift-package")
    ])
]
```

Google IMA (`GoogleInteractiveMediaAds`) is resolved automatically as a dependency.

## Usage

```swift
import GreenVideoSDK
import SwiftUI

struct PlayerView: View {
    var body: some View {
        GreenVideo(
            embedID: "<embed id>",
            licenseKey: "<license key>"
        )
    }
}
```

## Versions

Each version is published as a GitHub release with the prebuilt `GreenVideoSDK.xcframework.zip` attached.
`Package.swift` on the matching tag points to that release asset.
