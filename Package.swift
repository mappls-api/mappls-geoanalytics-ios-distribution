// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "MapplsGeoanalytics",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MapplsGeoanalytics",
            targets: ["MapplsGeoanalytics"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "MapplsGeoanalytics",
            url: "https://mmi-api-team.s3.amazonaws.com/mappls-sdk-ios/mappls-geoanalytics/MapplsGeoanalytics.xcframework-2.0.1.zip",
            checksum: "f94ca87a202404a2a0a3c256dfc4c9b6b4abb9bb7bc0957190d919c059ddf098"
        )
    ]
)
