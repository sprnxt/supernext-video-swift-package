# GreenVideoSDK for iOS

Swift Package distribution of the Green Video player SDK.

## Requirements

- iOS 15.0+
- Xcode 26 or later

## Installation

### Swift Package Manager

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

### Manual

1. Open the [Releases](https://github.com/sprnxt/supernext-video-swift-package/releases) page and download `GreenVideoSDK.xcframework.zip` from the version you need, or from the command line:

   ```sh
   curl -LO https://github.com/sprnxt/supernext-video-swift-package/releases/download/<version>/GreenVideoSDK.xcframework.zip
   ```

2. Unzip it:

   ```sh
   unzip GreenVideoSDK.xcframework.zip
   ```

3. Drag `GreenVideoSDK.xcframework` into your Xcode project and enable **Copy items if needed**.
4. Select your app target, open **General → Frameworks, Libraries, and Embedded Content** and set `GreenVideoSDK.xcframework` to **Embed & Sign**.
5. Add Google IMA 3.23.0 or later. The SDK links it dynamically, so the app has to provide it. Use one of:
   - Swift Package Manager: `https://github.com/googleads/swift-package-manager-google-interactive-media-ads-ios`
   - CocoaPods: `pod 'GoogleAds-IMA-iOS-SDK'`
   - The `GoogleInteractiveMediaAds.xcframework` from [Google's download page](https://developers.google.com/interactive-media-ads/docs/sdks/ios/client-side/download), also set to **Embed & Sign**.

To check the download, compare its SHA-256 with the `checksum` in `Package.swift` on the matching tag:

```sh
shasum -a 256 GreenVideoSDK.xcframework.zip
```

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
