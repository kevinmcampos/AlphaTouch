//
//  AppDelegate.m
//  AlphaTouch
//
//  Created by Kevin Campos on 28/02/16.
//  Copyright © 2016 Memorify. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    
    // 1. This is our canvas (UIWindow)
    
    self.window = [[UIWindow alloc] initWithFrame:viewRect];
    
    // 2. And here is our brush (UIViewController)
    
    UIViewController *colorUIController = [[UIViewController alloc] init];
    self.window.rootViewController = colorUIController;
    
    // 3. There is our paint (UIView)
    
    UIView *view = [[UIView alloc] initWithFrame:viewRect];
    view.backgroundColor = [UIColor yellowColor];
    colorUIController.view = view;
    
    [self.window makeKeyAndVisible];
    
    NSLog(@"If you are seeing this, well, it actually works");
    NSLog(@"This window tall is %f and width is %f", viewRect.size.height, viewRect.size.width);
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
