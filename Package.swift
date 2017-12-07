// swift-tools-version:4.0

import PackageDescription

let package = Package(
  name: "image-service-api",
  products: [
    .library(
      name: "image-service-api",
      targets: ["image-service-api"]),
    ],
  dependencies: [
    .package(url: "https://github.com/vapor/vapor.git", .upToNextMajor(from: "2.4.0")),
    .package(url: "https://github.com/goRestart/core-service.git", .branch("develop")),
  ],
  targets: [
    .target(
      name: "image-service-api",
      dependencies: ["CoreService"]),
    .testTarget(
      name: "image-service-apiTests",
      dependencies: ["image-service-api"]),
  ]
)
