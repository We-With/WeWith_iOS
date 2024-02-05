import ProjectDescription
import ProjectDescriptionHelpers
import ConfigPlugin

let dependencies = Dependencies(
    swiftPackageManager: .init([
        .remote(url: "https://github.com/SnapKit/SnapKit.git", requirement: .upToNextMinor(from: "5.0.0")),
        .remote(url: "https://github.com/devxoul/Then.git", requirement: .upToNextMajor(from: "3.0.0")),
        .remote(url: "https://github.com/ReactiveX/RxSwift.git", requirement: .upToNextMinor(from: "6.5.0")),
        .remote(url: "https://github.com/RxSwiftCommunity/RxFlow.git", requirement: .upToNextMajor(from: "2.13.0")),
        .remote(url: "https://github.com/Swinject/Swinject.git", requirement: .upToNextMajor(from: "2.8.3")),
        .remote(url: "https://github.com/Moya/Moya.git", requirement: .upToNextMajor(from: "15.0.0")),
        .remote(url: "https://github.com/airbnb/lottie-ios", requirement: .upToNextMajor(from: "4.3.3")),
        .remote(url: "https://github.com/onevcat/Kingfisher", requirement: .upToNextMajor(from: "7.0.0")),
        .remote(url: "https://github.com/MaeumgaGym/MindGymKit", requirement: .upToNextMajor(from: "0.2.3")),
    ], baseSettings: Settings.settings(
        configurations: XCConfig.framework
    )),
    platforms: [.iOS]
)
