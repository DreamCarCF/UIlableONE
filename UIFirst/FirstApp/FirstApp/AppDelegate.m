//
//  AppDelegate.m
//  FirstApp
//
//  Created by liuyuecheng on 15/7/27.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

//下列方法,都是我们应用程序的生命周期函数(方法)

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //这里才是程序的第一入口
    NSLog(@"didFinishLaunchingWithOptions,程序已经加载完毕");
    
    //创建了一个UIWindow对象
    //UIWindow是继承至UIView的一个类
    //UIView就是视图.看得见控件,都是视图.都是UIView的子类
    //一般一个应用程序,只有一个窗口UIWindow
    
    //frame就是视图的起始坐标+宽高
    //[UIScreen mainScreen] 取到了屏幕对象
    //bounds  取到屏幕的坐标,和宽高
    //创建了一个UIWindow对象,它和整个屏幕一样大
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    //给window设置一个背景颜色
//    [UIColor whiteColor] UIColor对象,并且是白色
    self.window.backgroundColor = [UIColor whiteColor];
    
    //让window视图可见
    [self.window makeKeyAndVisible];
 
    
    /*
     iOS中的坐标系
     
     iPhone,iPod touch
     屏幕尺寸         分辨率    基准分辨率(实际开发使用的分辨率)  设备
     ---
     使用一倍素材  1.png
     普通屏(3.5寸)   320*480   320*480                     iPhone,iPhone3G,iPhone3GS
     ------
     使用两倍素材  1@2x.png
     retina(3.5寸)  640*960   320*480                     iPhone4,iPhone4S
     retina(4寸)    640*1136  320*568                     iPhone5,iPhone5C,iPhone5S
     retina(4.7寸)  750*1334  375*667                     iPhone6
     
     ---
     使用三倍素材  1@3x.png
     retina(5.5寸)  1080*1920 414*736                     iPhone6 Plus
     
     iPad
     屏幕尺寸         分辨率    基准分辨率(实际开发使用的分辨率)  设备
     9.7(寸)(普通屏)  1024*768   1024*768                    iPad,iPad2
     7.9(寸)(普通屏)  1024*768   1024*768                     iPad mini
     
     9.7(寸)retina   2048*1536  1024*768        the new iPad,iPad4,iPad Air,ipad air2
     7.9(寸)retina   2048*1536  1024*768       iPad mini with retina display,ipad mini3
     */
    
    //创建一个view,也和屏幕一样大
    /*
     struct CGRect {
     CGPoint origin;
     CGSize size;
     };
     
     CGRect 包含两个结构体CGPoint,CGSize
     
     struct CGPoint {
     CGFloat x;
     CGFloat y;
     };
     CGPoint指一个点.坐标  x从屏幕左边往右边递增
                         y从屏幕顶部往下面递增
     
    struct CGSize {
        CGFloat width;
        CGFloat height;
    };
    CGSize  宽高
    width  宽度
    height 高度
     */
    
#if 0
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(50, 200, 100, 50)];
    
    //生成CGRect
    CGRect rect = {{20,20},{200,200}};
    //将起始坐标+宽高设置给我们的视图,会替换掉原来的值
    view.frame = rect;
    
    view.backgroundColor = [UIColor greenColor];
    //将这个视图,添加到窗口上
    [self.window addSubview:view];
    
    //创建一个起始坐标为50,50宽高为300,300.背景颜色为灰色的视图,添加到window上
    UIView *view2=[[UIView alloc]initWithFrame:CGRectMake(50, 50, 300, 300)];
    view2.backgroundColor = [UIColor grayColor];
    [self.window addSubview:view2];
#endif
    
    //frame和bounds的区别
    //frame是以父视图为参考系,来创建一个视图.父视图坐标偏移了多少,子视图也偏移多少.宽高不变
    //bounds是以本身为参考系,来创建一个视图.坐标就是(0,0),宽高也不变
    
    
    UIView *v1 = [[UIView alloc]initWithFrame:CGRectMake(50, 50, 200, 200)];
    v1.backgroundColor = [UIColor yellowColor];
    [self.window addSubview:v1];
    
    UIView *v2 = [[UIView alloc]initWithFrame:v1.bounds];
    v2.backgroundColor = [UIColor redColor];
    [v1 addSubview:v2];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    //暂停游戏
    NSLog(@"applicationWillResignActive,应程序即将变为不活动状态");
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    //command+shif+h   模拟home键
    //暂停定时器,保存游戏数据
    NSLog(@"applicationDidEnterBackground,应用程序已经进入后台");
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    NSLog(@"applicationWillEnterForeground,应用程序即将进入前台");
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    //继续游戏
    NSLog(@"applicationDidBecomeActive,应用程序已经变为活动状态");
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    //杀掉APP会触发此方法
    NSLog(@"applicationWillTerminate,应用程序即将结束");
}

//didFinishLaunchingWithOptions->applicationDidBecomeActive->(按下home键)applicationWillResignActive->applicationDidEnterBackground->(再打开应用程序)applicationWillEnterForeground->applicationDidBecomeActive
@end
