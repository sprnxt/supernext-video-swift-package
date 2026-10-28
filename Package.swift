// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "GreenVideoSDK",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "GreenVideoSDK", targets: ["GreenVideoSDKWrapper"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-interactive-media-ads-ios",
            from: "3.23.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "GreenVideoSDK",
            url: "https://github.com/sprnxt/supernext-video-swift-package/releases/download/2.0.92/GreenVideoSDK.xcframework.zip",
            checksum: "d50ccccf7740e8f037b5c5cb49f7f97db0291c0f157c3da3e1ec0f9534b97c55"
        ),
        .target(
            name: "GreenVideoSDKWrapper",
            dependencies: [
                "GreenVideoSDK",
                .product(
                    name: "GoogleInteractiveMediaAds",
                    package: "swift-package-manager-google-interactive-media-ads-ios"
                )
            ]
        )
    ]
)
