// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "MoonWalker",
    platforms: [.iOS(.v11)],
    products: [.library(name: "MoonWalker", targets: ["MoonWalker"])],
    targets: [.target(name: "MoonWalker", path: "Sources")]
)
