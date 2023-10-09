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
            checksum: "fd623339771fcdb57698faed0eacf8ba15ca507250aeed3d46029b442bb51c5b"),
        .target(name: "OpenSSL",
                dependencies: ["openssl"])
    ]
)
