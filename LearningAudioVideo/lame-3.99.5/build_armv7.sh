./configure \
--disable-shared \
--disable-frontend \
--host=arm-apple-darwin \
--prefix="/thin/armv7" \
--enable-muxer=mp3 \
--enable-encoder=libmp3lame \
--enable-libmp3lame \
--extra-cflags=”-Iexternal-libs/lame/include” \
--extra-ldflags=”-Lexternal-libs/lame/lib” \
CC="xcrun -sdk iphoneos clang -arch armv7" \
CFLAGS="-arch armv7 -fembed-bitcode -miphoneos-version-min=7.0" \
LDFLAGS="-arch armv7 -fembed-bitcode -miphoneos-version-min=7.0"
make clean
make -j8
make install
