//
//  AppDelegate+AppService.h
//  UProject
//
//  Created by ComarMet on 2017/10/19.
//  Copyright © 2017年 ComarMet. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate (AppService)

//初始化服务
-(void)initService;

//初始化 window
-(void)initWindow;

//初始化 UMeng
-(void)initUMeng;

//高德地图
-(void)initMap;

//初始化用户系统
-(void)initUserManager;

//监听网络状态
- (void)monitorNetworkStatus;


//单例
+ (AppDelegate *)shareAppDelegate;

/**
 当前顶层控制器
 */
-(UIViewController*) getCurrentVC;

-(UIViewController*) getCurrentUIVC;

@end
