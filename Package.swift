// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "IQTextView",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "IQTextView",
            targets: ["IQTextView"]
        )
    ],
    targets: [
        .target(name: "IQTextView",
            path: "IQTextView",
            resources: [
                .copy("Assets/PrivacyInfo.xcprivacy")
            ],
            linkerSettings: [
                .linkedFramework("UIKit")
            ]
        )
    ]
)
