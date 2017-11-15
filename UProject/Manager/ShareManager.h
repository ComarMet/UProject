//
//  ShareManager.h
//  UProject
//
//  Created by ComarMet on 2017/10/19.
//  Copyright © 2017年 ComarMet. All rights reserved.
// 分享

#import <Foundation/Foundation.h>

@interface ShareManager : NSObject
SINGLETON_FOR_HEADER(ShareManager)

- (void)showShareView;

@end
