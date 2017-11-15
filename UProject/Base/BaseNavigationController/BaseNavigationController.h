//
//  BaseNavigationController.h
//  UProject
//
//  Created by ComarMet on 2017/10/20.
//  Copyright © 2017年 ComarMet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseNavigationController : UINavigationController

/*!
 *  返回到指定的类视图
 *
 *  @param ClassName 类名
 *  @param animated  是否动画
 */
-(BOOL)popToAppointViewController:(NSString *)ClassName animated:(BOOL)animated;


@end
