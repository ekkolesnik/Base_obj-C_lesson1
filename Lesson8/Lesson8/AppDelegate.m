//
//  AppDelegate.m
//  Lesson8
//
//  Created by Evgeny Kolesnik on 07.09.2020.
//  Copyright © 2020 Evgeny Kolesnik. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSLog(@"Application is successfully started!");
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    NSLog(@"Application now is inactive!");
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    NSLog(@"Appilcation now is active!");
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    NSLog(@"Application became background!");
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"Application became foreground!");
}

- (void)applicationWillTerminate:(UIApplication *)application {
    NSLog(@"Application has been terminated!");
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
