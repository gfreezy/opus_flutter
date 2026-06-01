// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "opus_flutter_macos",
    platforms: [
        .macOS("10.15")
    ],
    products: [
        .library(name: "opus-flutter-macos", targets: ["opus_flutter_macos"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "opus_flutter_macos",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                "opus"
            ],
            path: "Sources/opus_flutter_macos"
        ),
        .binaryTarget(name: "opus", path: "opus.xcframework")
    ]
)
