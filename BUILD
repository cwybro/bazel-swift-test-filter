load(
    "@build_bazel_rules_swift//swift:swift.bzl",
    "swift_library",
    "swift_test",
)
load(
    "@build_bazel_rules_apple//apple:ios.bzl",
    "ios_unit_test",
)

filegroup(
    name = "TestFiles",
    srcs = glob(
        ["src/*.swift"],
        allow_empty = False,
    ),
)

# ------------
# rules_swift
# ------------

swift_test(
    name = "Tests_SwiftTest",
    srcs = [
        ":TestFiles",
    ],
    module_name = "Tests",
)

# ------------
# rules_apple
# ------------

swift_library(
    name = "Tests_iOSUnitTest_Lib",
    testonly = True,
    srcs = [
        ":TestFiles",
    ],
    module_name = "Tests",
)

ios_unit_test(
    name = "Tests_iOSUnitTest",
    minimum_os_version = "16.0",
    deps = [
        ":Tests_iOSUnitTest_Lib",
    ],
)
