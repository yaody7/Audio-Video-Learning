//
//  AppDelegate.m
//  LearningAudioVideo
//
//  Created by YDY on 2021/4/27.
//

#import "AppDelegate.h"
#import "Mp3Encoder.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    UIViewController *VC = [UIViewController new];
    VC.view = [[UIView alloc] initWithFrame:self.window.frame];
    VC.view.backgroundColor = UIColor.redColor;
    self.window.rootViewController = VC;
    Mp3Encoder *encoder = new Mp3Encoder();
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,
                  NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
             
    NSString *tmpMP3Path = [documentsDirectory stringByAppendingPathComponent:@"vocal.mp3"];
    
    // 需要调整
    const char *pcmPath = [@"44100.pcm" UTF8String];
    
    const char *mp3Path = [tmpMP3Path UTF8String];
    
    encoder->init(pcmPath, mp3Path, 44100, 2, 1411200);
    encoder->encode();
    delete encoder;
    
    return YES;
}

@end
