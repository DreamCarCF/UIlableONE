//
//  AppDelegate.m
//  CheseLabel
//
//  Created by liuyuecheng on 15/7/27.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //国际棋盘,8x8的布局,所以需要64个label
    NSArray *array = @[@"车",@"马",@"象",@"王",@"后",@"象",@"马",@"车"];
    for (int i=0; i<8; i++)
    {
        for (int j=0; j<8; j++)
        {
            UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(j*40, 20+i*40, 40, 40)];
            label.textAlignment = NSTextAlignmentCenter;
            
            //黑白相间
            if (i%2==j%2)
            {
                label.backgroundColor = [UIColor blackColor];
            }else
            {
                label.backgroundColor = [UIColor whiteColor];
            }
            
            if (i==0 || i==7) {
                label.text = array[j];
            }
            if (i == 1 || i==6) {
                label.text = @"卒";
            }
            
            if (i==0 || i==1) {
                label.textColor = [UIColor redColor];
            }
            if (i == 6 || i==7) {
                label.textColor = [UIColor greenColor];
            }
            
            [self.window addSubview:label];
        }
    }
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
