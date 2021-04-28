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
    
    Mp3Encoder encoder = Mp3Encoder();
    
    return YES;
}

@end
