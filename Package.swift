// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
 
import PackageDescription
 
let package = Package(
    name: "openssl",
    products: [
        // openssl.xcframework
        .library(
            name: "openssl",
            targets: ["openssl"]),
        // OpenSSL libray, can be imported by swift
        .library(
            name: "OpenSSL",
            targets: ["OpenSSL", "openssl"]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "openssl",
            url: "https://github.com/nferruzzi/openssl/releases/download/0.0.7/openssl_1_1_1q.xcframework.zip",
            checksum: "c235606efb1d778bd0abaa1ecaff5902eef5ac924edc55e3786b93a4050995c8"),
        .target(name: "OpenSSL",
                dependencies: ["openssl"])
    ]
)
