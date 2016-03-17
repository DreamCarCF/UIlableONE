//
//  AppDelegate.m
//  UILabelDemo
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
    
    //顶部状态栏的高度是20.状态栏的背景色默认透明
    
    //UILabel:标签视图.用来显示文字
    UILabel *label1 = [[UILabel alloc]initWithFrame:CGRectMake(10, 30, 300, 30)];
    //设置背景颜色
    label1.backgroundColor = [UIColor redColor];
    //设置显示文字
    label1.text = @"标签1";
    //将label添加到window上
    [self.window addSubview:label1];
    
    UILabel *label2 = [[UILabel alloc]initWithFrame:CGRectMake(10, 70, 300, 30)];
    label2.backgroundColor = [UIColor yellowColor];
    label2.text = @"标签2";
    //设置文字内容颜色
    label2.textColor = [UIColor grayColor];
    //设置文字居中对齐
    //NSTextAlignmentCenter  居中对齐
    //NSTextAlignmentLeft    左对齐
    //NSTextAlignmentRight   右对齐
    label2.textAlignment = NSTextAlignmentCenter;
    //更改字号.系统默认字号是17
    //返回字体为系统默认,字号为17的UIFont对象
    label2.font = [UIFont systemFontOfSize:10];
    [self.window addSubview:label2];
    
    //UIFont对象.字体对象
    //取得ios中的字体族数组
    NSArray *array = [UIFont familyNames];
//    NSLog(@"array==%@",array);
    
    for (NSString *familyName in array)
    {
        //根据字体族来取到其中的每个字体
        NSArray *names = [UIFont fontNamesForFamilyName:familyName];
        NSLog(@"names==%@",names);
    }
    
    UILabel *label3 = [[UILabel alloc]initWithFrame:CGRectMake(10, 110, 300, 30)];
    label3.backgroundColor = [UIColor purpleColor];
    label3.text = @"标签3hello";
    label3.textAlignment = NSTextAlignmentCenter;
    //添加文字阴影效果,颜色
    label3.shadowColor = [UIColor redColor];
    //设置阴影的偏移量
    label3.shadowOffset = CGSizeMake(5, -5);
    //设置字体
    label3.font = [UIFont fontWithName:@"Menlo-Italic" size:30];
    [self.window addSubview:label3];
    
    UILabel *label4 = [[UILabel alloc]initWithFrame:CGRectMake(10, 150, 300, 100)];
    label4.text = @"congratulations congratulations congratulations congratulations congratulations congratulations congratulations congratulations congratulations congratulations congratulations congratulations congratulations congratulations";
    //cyanColor 青色
    label4.backgroundColor = [UIColor cyanColor];
    //label默认只能显示一行文字
    //设置label可以显示多少行文字
    //0 代表文字布满整个label.行数无限制
    label4.numberOfLines = 0;
    //根据label的宽度,缩小或者放大字号,来达到完美显示
    label4.adjustsFontSizeToFitWidth = YES;
    /*
    label换行方式
    NSLineBreakByWordWrapping = 0,  //以单词换行,如果显示不下,舍去尾端(保证单词的完整)
    NSLineBreakByCharWrapping,      //以字符换行,如果显示不下,舍去尾端
    NSLineBreakByClipping,          //以单词换行,如果最后的单词显示不完,丢掉后面的部分,舍去尾端
    NSLineBreakByTruncatingHead,    //以单词换行,如果所有文字显示不全,舍去行首,以...表示
    NSLineBreakByTruncatingTail,    //以单词换行,如果所有文字显示不全,舍去行尾,以...表示
    NSLineBreakByTruncatingMiddle   //以单词换行,如果所有文字显示不全,舍去中间,以...表示
     */
    label4.lineBreakMode = NSLineBreakByTruncatingMiddle;
    
    [self.window addSubview:label4];
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
