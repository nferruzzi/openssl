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
            url: "https://github.com/nferruzzi/openssl/releases/download/0.0.4/openssl_1_1_1q.xcframework.zip",
            checksum: "938ca6756735c6335485b9d8d8f88edc94b4dea6b22239c5913b8892afada649"),
        .target(name: "OpenSSL",
                dependencies: ["openssl"])
    ]
)
