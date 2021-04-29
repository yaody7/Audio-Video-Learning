#!/bin/sh
export AS="gas-preprocessor.pl -arch arm -- xcrun -sdk iphoneos clang"
export CC="xcrun -sdk iphoneos clang"
./configure \
--enable-muxer=h264 \
--enable-encoder=libx264 \
--enable-libx264 \
--extra-cflags=”-Iexternal-libs/x264/include” \
--extra-ldflags=”-Lexternal-libs/x264/lib” \
--enable-static \
--enable-pic \
--disable-shared \
--disable-asm \
--host=arm-apple-darwin \
--extra-cflags="-arch arm64 -mios-version-min=7.0" \
--extra-asflags="-arch arm64 -mios-version-min=7.0" \
--extra-ldflags="-arch arm64 -mios-version-min=7.0" \
--prefix="/thin/arm64"
make clean
make -j8
make install
