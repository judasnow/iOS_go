//
//  AppDelegate.m
//  quiz
//
//  Created by judasnow on 2018/10/13.
//  Copyright © 2018 judasnow. All rights reserved.
//

#import "AppDelegate.h"
#import "QuizViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    QuizViewController *quizVC = [[QuizViewController alloc] init];
    self.window.rootViewController = quizVC;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
