// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MapplsGeoanalytics",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MapplsGeoanalytics",
            targets: ["MapplsGeoanalyticsWrapper"])
    ],
    dependencies: [
        .package(url: "https://github.com/mappls-api/mappls-api-core-ios-distribution.git", from: "2.0.4"),
        .package(url: "https://github.com/mappls-api/mappls-api-kit-ios-distribution.git", from: "3.0.0"),
        .package(url: "https://github.com/mappls-api/mappls-map-ios-distribution.git", from: "6.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "MapplsGeoanalytics",
            url: "https://mmi-api-team.s3.amazonaws.com/mappls-sdk-ios/mappls-geoanalytics/MapplsGeoanalytics.xcframework-2.0.0.zip",
            checksum: "9d325dc526b08f6fcd76ee46f77929177126f0b0a36da2f8b32d731ad4ae91a7"
        ),
        .target(
            name: "MapplsGeoanalyticsWrapper",
            dependencies: [
                "MapplsGeoanalytics",
                .product(name: "MapplsAPICore", package: "mappls-api-core-ios-distribution"),
                .product(name: "MapplsAPIKit", package: "mappls-api-kit-ios-distribution"),
                .product(name: "MapplsMap", package: "mappls-map-ios-distribution")
            ]
        ),
    ]
)
