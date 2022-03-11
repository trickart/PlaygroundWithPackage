// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Dependencies",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Dependencies",
            targets: ["Dependencies"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-collections.git", branch: "main")
    ],
    targets: [
        .target(
            name: "Dependencies",
            dependencies: [
                .product(name: "Collections", package: "swift-collections")
            ])
    ]
)
