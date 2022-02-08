#! /bin/bash

rm -rf outputs
mkdir outputs

xcodebuild archive \
-scheme Dogs \
-archivePath ~/Developer/Personal/FrameworkPractice/Dogs/outputs/Dogs-iphoneos.xcarchive \
-sdk iphoneos \
SKIP_INSTALL=NO

xcodebuild archive \
-scheme Dogs \
-archivePath ~/Developer/Personal/FrameworkPractice/Dogs/outputs/Dogs-iphonesimulator.xcarchive \
-sdk iphonesimulator \
SKIP_INSTALL=NO

xcodebuild -create-xcframework \
-framework outputs/Dogs-iphonesimulator.xcarchive/Products/Library/Frameworks/Dogs.framework \
-framework outputs/Dogs-iphoneos.xcarchive/Products/Library/Frameworks/Dogs.framework \
-output outputs/Dogs.xcframework
