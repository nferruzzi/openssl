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
            url: "https://github.com/nferruzzi/openssl/releases/download/0.0.2-rc/openssl_1_1_1h.xcframework.zip",
            checksum: "8aa584edf1d850023809582771463a6079cb02705dd79f32834a4785d733075a"),
        .target(name: "OpenSSL",
                dependencies: ["openssl"])
    ]
)
