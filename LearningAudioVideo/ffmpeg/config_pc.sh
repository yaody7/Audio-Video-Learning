#!/bin/bash
./configure \
--enable-gpl \
--disable-shared \
--disable-asm \
--disable-yasm \
--enable-filter=aresample \
--enable-bsf=aac_adtstoasc \
--enable-small \
--enable-dct \
--enable-dwt \
--enable-lsp \
--enable-mdct \
--enable-rdft \
--enable-fft \
--enable-static \
--enable-version3 \
--enable-nonfree \
--enable-encoder=libfdk_aac \
--enable-encoder=libx264 \
--enable-decoder=mp3 \
--disable-decoder=h264_vda \
--disable-d3d11va \
--disable-dxva2 \
--disable-vaapi \
--disable-vdpau \
--disable-videotoolbox \
--disable-securetransport \
--enable-libx264 \
--enable-libfdk_aac \
--enable-libmp3lame \
--extra-cflags="-Ipc_fdk_aac/include -Ix264_pc/include -Ipc_lame/include" \
--extra-ldflags="-Lpc_fdk_aac/lib -Lx264_pc/lib -Lpc_lame/lib" \
--prefix='/Users/apple/Desktop/ffmpegtmp_1'
