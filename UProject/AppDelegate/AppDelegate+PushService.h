//
//  AppDelegate+PushService.h
//  UProject
//
//  Created by ComarMet on 2017/10/26.
//  Copyright © 2017年 ComarMet. All rights reserved.
//   推送 消息处理

#import "AppDelegate.h"

@interface AppDelegate (PushService)<JPUSHRegisterDelegate>

- (void)initPushServiceDidFinishOptions:(NSDictionary *)launchOptions;

- (void)pushApplication:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification;
@end
