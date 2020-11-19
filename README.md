# openssl 1.1.1 for Swift 5.x

## All inclusive Swift package to import OpenSSL 1.1.1h from Swift and ObjC. 

The binary xcframework is provided via zip as required by Swift Package, built using the `openssl-apple` project.

Included platforms: Mac (arm, x86), iOS, WatchOS, tvOS and simulators.

This packages is based on:

1. XCFramework build script: https://github.com/keeshux/openssl-apple 
1. OpenSSL shim and inline functions: https://github.com/Kitura/OpenSSL

Tips:

If you make your own version of the frameworks don't forget their symbolic links:
- create a zip using *--symlinks* ie: `zip --symlinks -r openssl_1_1_1d.xcframework.zip openssl.xcframework` 
- or copy the xcframework using `cp -R ...`

otherwise you may experience codes-signing problems due to bogus frameworks.

### Example


```Package.swift
...
    dependencies: [
        .package(name: "openssl", url: "https://github.com/nferruzzi/openssl", from: "0.0.2"),
    ],
    targets: [
        .target(
            name: "MyApp",
            dependencies: [.product(name: "OpenSSL", package: "openssl")]),
    ]
```

and then you can

```
import OpenSSL
...
        OpenSSL_SSL_init()
        ERR_load_CRYPTO_strings()
```
