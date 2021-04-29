./configure \
--disable-shared \
--disable-frontend \
--host=arm-apple-darwin \
--prefix="/thin/arm64" \
--enable-muxer=mp3 \
--enable-encoder=libmp3lame \
--enable-libmp3lame \
--extra-cflags=”-Iexternal-libs/lame/include” \
--extra-ldflags=”-Lexternal-libs/lame/lib” 
\CC="xcrun -sdk iphoneos clang -arch arm64" \
CFLAGS="-arch arm64 -fembed-bitcode -miphoneos-version-min=7.0" \
LDFLAGS="-arch arm64 -fembed-bitcode -miphoneos-version-min=7.0"
make clean
make -j8
make install
