//
//  AppDelegate.m
//  QUIExt
//
//  Created by Quua on 2020/2/12.
//  Copyright © 2020 Quua. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    self.window.backgroundColor = UIColor.whiteColor;
    [self.window makeKeyAndVisible];

    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:HomeViewController.new];
    self.window.rootViewController = nav;

    return YES;
}


@end
