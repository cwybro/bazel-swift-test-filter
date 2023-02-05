.PHONY swift_test:
swift_test:
	bazelisk test //:Tests_SwiftTest --test_output=all -t-

.PHONY ios_unit_test:
ios_unit_test:
	bazelisk test //:Tests_iOSUnitTest --test_output=all -t-

.PHONY swift_test_filter:
swift_test_filter:
	bazelisk test //:Tests_SwiftTest --test_output=all -t- --test_filter=Tests.PassFailTests/test_pass

.PHONY ios_unit_test_filter:
ios_unit_test_filter:
	bazelisk test //:Tests_iOSUnitTest --test_output=all -t- --test_filter=Tests.PassFailTests/test_pass
