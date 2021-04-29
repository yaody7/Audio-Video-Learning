//
//  Mp3Encoder.h
//  LearningAudioVideo
//
//  Created by YDY on 2021/4/27.
//

#ifndef Mp3Encoder_hpp
#define Mp3Encoder_hpp

#include <stdio.h>
#include "lame.h"


class Mp3Encoder {

private:
    FILE *pcmFile;
    FILE *mp3File;
    lame_t lameClient;
public:
    int init(const char *pcmFilePath, const char *mp3FilePath, int sampleRate, int channels, int bitRate);
    void encode();
    void destroy();
};





#endif /* Mp3Encoder_hpp */
