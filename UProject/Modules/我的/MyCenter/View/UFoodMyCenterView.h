//
//  UFoodMyCenterView.h
//  UProject
//
//  Created by ComarMet on 2017/10/31.
//  Copyright © 2017年 ComarMet. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^ReturnBlock)(NSString * str);

@interface UFoodMyCenterView : UIView
@property (nonatomic, copy) ReturnBlock returnBlock;


@end
