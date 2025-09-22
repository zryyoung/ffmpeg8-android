#!/usr/bin/env bash


export ANDROID_NDK_ROOT=$ANDROID_NDK_HOME
# export PATH=$ANDROID_NDK_ROOT/toolchains/llvm/prebuilt/darwin-x86_64/bin:$ANDROID_NDK_ROOT/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64/bin:$PATH

CC=${FAM_CC} \
CXX=${FAM_CXX} \
AR=${FAM_AR} \
AS=${X264_AS} \
RANLIB=${FAM_RANLIB} \
STRIP=${FAM_STRIP} \
./Configure \
    --prefix=${INSTALL_DIR} \
    android-arm64 \
    CC=${FAM_CC} \
    AR=${FAM_AR} \
    RANLIB=${FAM_RANLIB} || exit 1

${MAKE_EXECUTABLE} clean
${MAKE_EXECUTABLE} -j${HOST_NPROC}
${MAKE_EXECUTABLE} install
