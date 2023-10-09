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
            url: "https://github.com/nferruzzi/openssl/releases/download/0.0.5/openssl_1_1_1q.xcframework.zip",
            checksum: "2768668835431c82601f36a6c1159d40e22deadd5cdfaa8dd4831a0cdd02578f"),
        .target(name: "OpenSSL",
                dependencies: ["openssl"])
    ]
)
