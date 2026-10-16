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
            url: "https://github.com/sprnxt/supernext-video-swift-package/releases/download/2.0.90/GreenVideoSDK.xcframework.zip",
            checksum: "c5bdb052e2d2d8526ea2b2b90cdf00dd7d0a1564e31665959c19ac03cd6d0d58"
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
