//
//  MainTabBarController.h
//  UProject
//
//  Created by ComarMet on 2017/10/25.
//  Copyright © 2017年 ComarMet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainTabBarController : UITabBarController

/**
 设置小红点
 
 @param index tabbar下标
 @param isShow 是显示还是隐藏
 */
-(void)setRedDotWithIndex:(NSInteger)index isShow:(BOOL)isShow;

@end
