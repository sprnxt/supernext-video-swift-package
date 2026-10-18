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
            url: "https://github.com/sprnxt/supernext-video-swift-package/releases/download/2.0.91/GreenVideoSDK.xcframework.zip",
            checksum: "da8a0e2149762e65786e543d201e032c438cbb65a1daaef654edda16e1ef7635"
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
