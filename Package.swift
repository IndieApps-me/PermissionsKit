// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "PermissionsKit",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12),
        .watchOS(.v4),
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "PermissionsKit",
            targets: ["PermissionsKit"]
        ),
        .library(
            name: "CameraPermission",
            targets: ["CameraPermission"]
        ),
        .library(
            name: "PhotoLibraryPermission",
            targets: ["PhotoLibraryPermission"]
        ),
        .library(
            name: "NotificationPermission",
            targets: ["NotificationPermission"]
        ),
        .library(
            name: "MicrophonePermission",
            targets: ["MicrophonePermission"]
        ),
        .library(
            name: "CalendarPermission",
            targets: ["CalendarPermission"]
        ),
        .library(
            name: "ContactsPermission",
            targets: ["ContactsPermission"]
        ),
        .library(
            name: "RemindersPermission",
            targets: ["RemindersPermission"]
        ),
        .library(
            name: "SpeechRecognizerPermission",
            targets: ["SpeechRecognizerPermission"]
        ),
        .library(
            name: "LocationPermission",
            targets: ["LocationPermission"]
        ),
        .library(
            name: "MotionPermission",
            targets: ["MotionPermission"]
        ),
        .library(
            name: "MediaLibraryPermission",
            targets: ["MediaLibraryPermission"]
        ),
        .library(
            name: "BluetoothPermission",
            targets: ["BluetoothPermission"]
        ),
        .library(
            name: "TrackingPermission",
            targets: ["TrackingPermission"]
        ),
        .library(
            name: "FaceIDPermission",
            targets: ["FaceIDPermission"]
        ),
        .library(
            name: "SiriPermission",
            targets: ["SiriPermission"]
        ),
        .library(
            name: "HealthPermission",
            targets: ["HealthPermission"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "PermissionsKit",
            resources: [
                .process("Resources")
            ],
            swiftSettings: [
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "CameraPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_CAMERA"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "PhotoLibraryPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_PHOTOLIBRARY"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "NotificationPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_NOTIFICATION"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "MicrophonePermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_MICROPHONE"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "CalendarPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_CALENDAR"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "ContactsPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_CONTACTS"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "RemindersPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_REMINDERS"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "SpeechRecognizerPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_SPEECH"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "LocationPermission",
            dependencies: [
                .target(name: "PermissionsKit")
            ],
            swiftSettings: [
                .define("PERMISSIONSKIT_LOCATION"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "MotionPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_MOTION"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "MediaLibraryPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_MEDIA_LIBRARY"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "BluetoothPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_BLUETOOTH"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "TrackingPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_TRACKING"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "FaceIDPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_FACEID"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "SiriPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_SIRI"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "HealthPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_HEALTH"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
