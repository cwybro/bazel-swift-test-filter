# Bazel Test Filter Support: rules_swift

This repository demonstrates the addition of [`--test_filter`](https://bazel.build/docs/user-manual#test-filter) support in the [bazelbuild/rules_swift](https://github.com/bazelbuild/rules_swift) [`xctest_runner.sh.template`](https://github.com/bazelbuild/rules_swift/blob/a4f17129f052062bc3084d56b9f25c8b51b855f9/tools/xctest_runner/xctest_runner.sh.template#L57). [Per the Bazel Test Encyclopedia](https://bazel.build/reference/test-encyclopedia), the value of `--test_filter` is injected into test runners as the `TESTBRIDGE_TEST_ONLY` environment variable.

This allows [`swift_test`](https://github.com/bazelbuild/rules_swift/blob/master/doc/rules.md#swift_test) consumers to specify a test scope when invoking tests for a given target, allowing the test execution to be more focused (similar to Xcode test selection conveniences). The following code block demonstrates the use of this parameter:
```
bazel test //:Tests --test_filter=TestModuleName.TestClassName/testMethodName
```

## Details

This repository consumes a [fork of bazelbuild/rules_swift](https://github.com/cwybro/rules_swift), with [a single commit adding this support](https://github.com/cwybro/rules_swift/commit/48ebc62c7cd83d3ddc1a1f0b79c4f245175eda15).

This repository also includes a [bazelbuild/rules_apple `ios_unit_test`](https://github.com/bazelbuild/rules_apple/blob/master/doc/rules-ios.md#ios_unit_test) example of `--test_filter` support, which is [already implemented](https://github.com/bazelbuild/rules_apple/blob/5b8217613aa1ef4d889477d036590979858dbf4e/apple/testing/default_runner/ios_test_runner.template.sh#L144).

## Demo

Edit the `WORKSPACE` file to adjust the backing of `build_bazel_rules_swift` (official release vs. custom fork with new support), which will demonstrate the missing support, and the addition of the support.

### Execute all tests in `swift_test` target

```
make swift_test
```

**Expectation:** `Executed 3 tests, with 2 failures (0 unexpected)`

### Execute filtered tests in `swift_test` target

```
make swift_test_filter
```

**Expectation:** `Executed 1 test, with 0 failures (0 unexpected)`

## TODO

- Add tests covering the [`--test_filter` support](https://github.com/cwybro/rules_swift/commit/48ebc62c7cd83d3ddc1a1f0b79c4f245175eda15)

