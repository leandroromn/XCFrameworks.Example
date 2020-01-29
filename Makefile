framework:
	# Generate archive file for iOS
	xcodebuild archive -scheme TheIncredibleFramework \
	-destination="iOS" \
	-archivePath frameworks/TheIncredibleFramework-iOS.xcarchive \
	-sdk iphoneos \
	SKIP_INSTALL=NO \
	BUILD_LIBRARIES_FOR_DISTRIBUTION=YES
	# Generate archive file for Simulator
	xcodebuild archive -scheme TheIncredibleFramework \
	-destination="iOS Simulator" \
	-archivePath frameworks/TheIncredibleFramework-Simulator.xcarchive \
	-sdk iphonesimulator \
	SKIP_INSTALL=NO \
	BUILD_LIBRARIES_FOR_DISTRIBUTION=YES
	# Generate XCFramework with both archives
	rm -rf frameworks/TheIncredibleFramework.xcframework
	xcodebuild -create-xcframework \
	-framework frameworks/TheIncredibleFramework-iOS.xcarchive/Products/Library/Frameworks/TheIncredibleFramework.framework \
	-framework frameworks/TheIncredibleFramework-Simulator.xcarchive/Products/Library/Frameworks/TheIncredibleFramework.framework \
	-output frameworks/TheIncredibleFramework.xcframework