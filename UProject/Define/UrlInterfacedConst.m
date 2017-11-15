//
//  UrlInterfacedConst.m
//  UProject
//
//  Created by ComarMet on 2017/10/23.
//  Copyright © 2017年 ComarMet. All rights reserved.
//

#import "UrlInterfacedConst.h"
#if DevelopSever
/** 接口前缀-开发服务器*/
NSString *const kApiPrefix = @"接口服务器的请求前缀 例: http://192.168.10.10:8080";
#elif TestSever
/** 接口前缀-测试服务器*/
NSString *const kApiPrefix = @"http://api.budejie.com/api/api_open.php";
#elif ProductSever
/** 接口前缀-生产服务器*/
NSString *const kApiPrefix = @"http://api.budejie.com/api/api_open.php"";
#endif
#pragma mark - 详细接口地址
/** 登录*/
NSString *const kLogin = @"/login";
/** 平台会员退出*/
NSString *const kExit = @"/exit";
