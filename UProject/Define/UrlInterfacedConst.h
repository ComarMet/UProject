//
//  UrlInterfacedConst.h
//  UProject
//
//  Created by ComarMet on 2017/10/23.
//  Copyright © 2017年 ComarMet. All rights reserved.
//

#import <UIKit/UIKit.h>


#define DevelopSever 0
#define TestSever    1
#define ProductSever 0

/** 接口前缀-开发服务器*/
UIKIT_EXTERN NSString *const kApiPrefix;

#pragma mark - 详细接口地址
/** 登录*/
UIKIT_EXTERN NSString *const kLogin;
/** 平台会员退出*/
UIKIT_EXTERN NSString *const kExit;
