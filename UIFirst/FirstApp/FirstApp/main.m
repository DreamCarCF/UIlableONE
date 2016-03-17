//
//  main.m
//  FirstApp
//
//  Created by liuyuecheng on 15/7/27.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//


//程序的入口
#import <UIKit/UIKit.h>
//导入UIKit用来显示界面
#import "AppDelegate.h"

int main(int argc, char * argv[])
{
    //@autoreleasepool{}自动释放池
    @autoreleasepool
    {
        //1.创建了UIApplication对象
        //2.创建了AppDelegate.作为UIApplication的代理
        //3.启动了系统循环事件
        
        //NSStringFromClass  将类名转化为字符串,绑定UIApplication和AppDelegate的代理关系
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
