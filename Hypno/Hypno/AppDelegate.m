//
//  AppDelegate.m
//  Hypno
//
//  Created by ss on 2018/10/21.
//  Copyright © 2018 ss. All rights reserved.
//

#import "AppDelegate.h"
#import "HypnosisViewController.h"
#import "ReminderViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:
                   [[UIScreen mainScreen] bounds]];
    
    HypnosisViewController *hvc = [[HypnosisViewController alloc] init];
    // 直接通过设置 vc 来设置的 view
    // 和上一个示例不同
//    self.window.rootViewController = hvc;
    
    NSBundle *appBundle = [NSBundle mainBundle];
    ReminderViewController *rvc = [[ReminderViewController alloc]
                                   initWithNibName:@"ReminderViewController"
                                   bundle:appBundle];
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = @[hvc, rvc];
    
    self.window.rootViewController = tabBarController;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyWindow];
    return YES;
}


//- (void) setRootViewController:(UIViewController *)viewController
//{
//    UIView *rootView = viewController.view;
//    CGRect viewFrame = self.bounds;
//    rootView.frame = viewFrame;
//    [self addSubview:rootView];
//    _rootViewController = viewController;
//}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
