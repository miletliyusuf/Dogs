// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Dogs",
    platforms: [
    	.iOS(.v12)
    ],
    products: [
        .library(name: "Dogs", targets: ["Dogs"])
    ],
    targets: [
    	.binaryTarget(name: "Dogs", path: "outputs/Dogs.xcframework")
    ]
)
