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
            url: "https://github.com/nferruzzi/openssl/releases/download/0.0.6/openssl_1_1_1q.xcframework.zip",
            checksum: "17362dec226e1ec1d49d8a2402c4076769d8ad91ff7c52fbf9abcd8940411d3b"),
        .target(name: "OpenSSL",
                dependencies: ["openssl"])
    ]
)
