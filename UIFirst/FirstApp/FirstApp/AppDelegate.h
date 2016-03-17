//
//  AppDelegate.h
//  FirstApp
//
//  Created by liuyuecheng on 15/7/27.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import <UIKit/UIKit.h>
//导入了UI框架
@interface AppDelegate : UIResponder <UIApplicationDelegate>
//继承UIResponder
//遵守了UIApplicationDelegate协议
@property (strong, nonatomic) UIWindow *window;
//拥有一个window对象.这个对象是用来显示视图(界面)

@end

