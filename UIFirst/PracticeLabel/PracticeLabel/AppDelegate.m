//
//  AppDelegate.m
//  PracticeLabel
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
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(50, 50, 250, 30)];
    label.text = @"忠义千古";
    label.textColor = [UIColor yellowColor];
    label.backgroundColor = [UIColor blueColor];
    label.textAlignment = NSTextAlignmentCenter;
    
    //将视图放在父视图的正中央
    //取到父视图的宽中间点,高中间点,设置给label
    label.center = CGPointMake(self.window.frame.size.width/2, self.window.frame.size.height/2);
    
    //UIColor  颜色类 yellowColor
    //使用三原色,来产生颜色对象
    //RGB 1 1 1 代表白
    //RGB 0 0 0 代表黑
    //alpha  透明度  1.0代表不透明
    //需要除以255.0,才是正确的值
    UIColor *userColor = [UIColor colorWithRed:74/255.0 green:14/255.0 blue:31/255.0 alpha:1.0];
    label.backgroundColor = userColor;
    
    
    //产生随机数
    CGFloat red = arc4random()%256;
    CGFloat green = arc4random()%256;
    CGFloat blue = arc4random()%256;
    
    //产生随机颜色,赋给label的背景
    userColor = [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1.0];
    label.backgroundColor = userColor;
    
    [self.window addSubview:label];
    
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
