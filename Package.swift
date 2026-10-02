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
            url: "https://github.com/sprnxt/supernext-video-swift-package/releases/download/0.0.0/GreenVideoSDK.xcframework.zip",
            checksum: "0000000000000000000000000000000000000000000000000000000000000000"
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
