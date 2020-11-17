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
            targets: ["OpenSSL"]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "openssl",
//            path: "openssl.xcframework"),
            url: "https://wdy-backups.s3.eu-central-1.amazonaws.com/OpenSSL/openssl_1_1_1d.xcframework.zip",
            checksum: "aa4a87a444d1ca9b0b23ef1b66e6af6764bf789fd6d06bbeb97943bf638ce4b5"),
        .target(name: "OpenSSL",
                dependencies: ["openssl"])
    ]
)
