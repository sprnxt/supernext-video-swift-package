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
            url: "https://github.com/sprnxt/supernext-video-swift-package/releases/download/2.0.89/GreenVideoSDK.xcframework.zip",
            checksum: "0bd2be31037e01b5935c9b5b76278bfff5f38f6a5bb3102a1679cc832d86b0fb"
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
