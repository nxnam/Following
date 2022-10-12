// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Following",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Following",
            targets: ["Following"]),
    ],
    dependencies: [
        .package(url: "https://github.com/uber/RIBs", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Following",
            dependencies: ["RIBs"]),
        .testTarget(
            name: "FollowingTests",
            dependencies: ["Following"]),
    ]
)
