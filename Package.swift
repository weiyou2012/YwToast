// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YwToast",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "YwToast",
            targets: ["YwToast"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "YwToast",
            dependencies: []),
        .testTarget(
            name: "YwToastTests",
            dependencies: ["YwToast"]),
    ],
    swiftLanguageVersions: [
        .v4_2
    ]
)
