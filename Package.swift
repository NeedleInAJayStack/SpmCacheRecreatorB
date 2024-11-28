// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SpmCacheRecreatorB",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "BSmall",
            targets: ["BSmall"]
        ),
        .library(
            name: "BBig",
            targets: ["BBig"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/NeedleInAJayStack/SpmCacheRecreatorA.git", exact: "0.0.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "BSmall"
        ),
        .target(
            name: "BBig",
            dependencies: [
                .product(name: "A", package: "SpmCacheRecreatorA")
            ]
        ),
        .testTarget(
            name: "SpmCacheRecreatorBTests",
            dependencies: ["BSmall", "BBig"]
        ),
    ]
)
