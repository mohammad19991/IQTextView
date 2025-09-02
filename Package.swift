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
    dependencies: [
        .package(url: "https://github.com/mohammad19991/IQKeyboardToolbar.git", from: "1.1.4"),
    ],
    targets: [
        .target(name: "IQTextView",
                dependencies: ["IQKeyboardToolbar"],
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
