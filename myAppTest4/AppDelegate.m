//
//  AppDelegate.m
//  myAppTest4
//
//  Created by yanyuling on 15/12/29.
//  Copyright (c) 2015年 yanyuling. All rights reserved.
//

#import "AppDelegate.h"
#import "HomePageViewController.h"
#include "DiscoverViewController.h"
#include "NotifyViewController.h"
#import "PrivateMsgViewController.h"
#import "MoreViewController.h"
//#import "FirstTabBarController.h"

//#import "MySecondViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];

    // Override point for customization after application launch.
    UIViewController * firstCtr = [[HomePageViewController alloc] init];
    UINavigationController *navi1 = [[UINavigationController alloc] initWithRootViewController:firstCtr];
    navi1.tabBarItem.title = @"首页";
    navi1.tabBarItem.selectedImage = [[UIImage imageNamed:@"Tabbar_Feed_Highlight@3x.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [navi1.tabBarItem setImage:[UIImage imageNamed:@"Tabbar_Feed_Normal@3x.png"] ];
    
    UINavigationController *navi2 = [[UINavigationController alloc] initWithRootViewController:[[DiscoverViewController alloc] init]];
    navi2.tabBarItem.title = @"发现";
    navi2.tabBarItem.selectedImage = [[UIImage imageNamed:@"Tabbar_Discover_Highlight@3x.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [navi2.tabBarItem setImage:[UIImage imageNamed:@"Tabbar_Discover_Normal@3x.png"] ];

    
    
    UINavigationController *navi3 = [[UINavigationController alloc] initWithRootViewController:[[NotifyViewController alloc] init]];
    navi3.tabBarItem.title = @"通知";
    [navi3.tabBarItem setImage:[[UIImage imageNamed:@"Tabbar_Notifications_Normal@3x.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] ];
    navi3.tabBarItem.selectedImage = [[UIImage imageNamed:@"Tabbar_Notifications_Highlight@3x.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UINavigationController *navi4 = [[UINavigationController alloc] initWithRootViewController:[[PrivateMsgViewController alloc] init]];
    navi4.tabBarItem.title = @"私信";
    [navi4.tabBarItem setImage:[[UIImage imageNamed:@"Tabbar_Messages_Normal@3x.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] ];
    navi4.tabBarItem.selectedImage = [[UIImage imageNamed:@"Tabbar_Notifications_Highlight@3x.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UINavigationController *navi5 = [[UINavigationController alloc] initWithRootViewController:[[MoreViewController alloc] init]];
    navi5.tabBarItem.title = @"更多";
    [navi5.tabBarItem setImage:[[UIImage imageNamed:@"Tabbar_More_Normal@3x.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] ];
    navi5.tabBarItem.selectedImage = [[UIImage imageNamed:@"Tabbar_More_Highlight@3x.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    _tabBar = [[UITabBarController alloc] init];
    _tabBar.viewControllers = @[navi1,navi2,navi3,navi4,navi5];
    [_tabBar.tabBar setTintColor: [UIColor colorWithRed:0 green:255 blue:0 alpha:1.0]];
    [_tabBar.tabBar setBarTintColor:[UIColor colorWithRed:255 green:255 blue:255 alpha:1.0]];
    self.window.rootViewController = _tabBar;
    [self.window makeKeyAndVisible ];
    
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
