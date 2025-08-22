// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "BoxOfficesKit",
  platforms: [.iOS(.v15), .macOS(.v13)],
  products: [
    // Products define the executables and libraries a package produces, making them visible to other packages.
    .library(
      name: "BoxOfficesKit",
      targets: ["BoxOfficesKit"]),
//    .executable(name: <#T##String#>, targets: <#T##[String]#>)
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-docc-plugin", branch: "main")
  ],
  targets: [
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    .target(
      name: "BoxOfficesKit"),
    .testTarget(
      name: "BoxOfficesKitTests",
      dependencies: ["BoxOfficesKit"]
    ),
  ]
)
