# openssl 1.1.1 for Swift 5.x

## All inclusive Swift package to use OpenSSL 1.1.1h from Swift. 

The binary xcframework is provided via zip as required by Swift Package.

Included platforms: Mac (arm, x86), iOS, WatchOS, tvOS and simulators.

This packages is a mix of other projects:

1. XCFramework build script: https://github.com/keeshux/openssl-apple 
1. OpenSSL shim and inline functions: https://github.com/Kitura/OpenSSL

Tips:

If you make your own don't forget that the frameworks contain symbolic links:
- create a zip using *--symlinks* ie: `zip --symlinks -r openssl_1_1_1d.xcframework.zip openssl.xcframework` 
- copy the xcframework using `cp -R ...`

if you forget you may experience codes-signing problems.

