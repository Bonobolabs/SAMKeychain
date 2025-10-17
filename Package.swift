// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SAMKeychain",
    platforms: [
        .iOS(.v12),
        .macOS(.v12),
        .watchOS(.v7)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SAMKeychain",
            targets: ["SAMKeychain"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SAMKeychain",
            path: "Sources",
            publicHeadersPath: ".",

        ),
        .testTarget(
            name: "SAMKeychainTests",
            dependencies: ["SAMKeychain"],
            path: "Tests",
        ),
    ]
)
