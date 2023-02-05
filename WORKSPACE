load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# Custom fork with '--test_filter' support
http_archive(
    name = "build_bazel_rules_swift",
    sha256 = "aeabc9ec9c049548d5b9f7ea8e341035f76389da038d14c4537be2ca6db63978",
    strip_prefix = "rules_swift-48ebc62c7cd83d3ddc1a1f0b79c4f245175eda15",
    url = "https://github.com/cwybro/rules_swift/archive/48ebc62c7cd83d3ddc1a1f0b79c4f245175eda15.zip",
)

# Official release without `--test_filter` support
# http_archive(
#     name = "build_bazel_rules_swift",
#     sha256 = "84e2cc1c9e3593ae2c0aa4c773bceeb63c2d04c02a74a6e30c1961684d235593",
#     url = "https://github.com/bazelbuild/rules_swift/releases/download/1.5.1/rules_swift.1.5.1.tar.gz",
# )

http_archive(
    name = "build_bazel_rules_apple",
    sha256 = "43737f28a578d8d8d7ab7df2fb80225a6b23b9af9655fcdc66ae38eb2abcf2ed",
    url = "https://github.com/bazelbuild/rules_apple/releases/download/2.0.0/rules_apple.2.0.0.tar.gz",
)

load(
    "@build_bazel_rules_apple//apple:repositories.bzl",
    "apple_rules_dependencies",
)

apple_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:extras.bzl",
    "swift_rules_extra_dependencies",
)

swift_rules_extra_dependencies()

load(
    "@build_bazel_apple_support//lib:repositories.bzl",
    "apple_support_dependencies",
)

apple_support_dependencies()
