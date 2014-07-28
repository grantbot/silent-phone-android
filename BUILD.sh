

#set to your local SDK dir
export ANDROID_SDK=$HOME/Documents/android/sdk

#set to your local SDK dir
export ANDROID_NDK=$HOME/Documents/android/android-ndk-r10


export PATH=$ANDROID_NDK:$ANDROID_ANT:$ANDROID_SDK/tools:$PATH

export SRC_ROOT=$WORKSPACE

export AUTOMATED_BUILD=1
export JNI_ROOT=$WORKSPACE/support

export BUILD_NUMBER=1
export BUILD_ID="`date --rfc-3339=seconds`"

rm -f silentphone.apk
bash -x .build-release/android-build.sh

