#!/bin/bash


echo "sdk.dir=$ANDROID_SDK" > local.properties
echo "ndk.dir=$ANDROID_NDK" >> local.properties

# ndk jni builds
# ndk-build -d -B V=1 NDK_LOG=1
ndk-build

echo "build_environment=silentcircle.com"                 >> gradle.properties
echo "build_version=$BUILD_NUMBER"                        >> gradle.properties
echo "build_commit=$(git log -n 1 --pretty=format:'%h')"  >> gradle.properties
echo "build_date=$BUILD_ID"                               >> gradle.properties
echo "build_debug=true"                                   >> gradle.properties
echo "build_partners="                                    >> gradle.properties

#./gradlew tasks
#./gradlew assembleDebug
./gradlew clean assembleRelease

