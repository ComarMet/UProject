//
//  UHeadMyCenterView.m
//  UProject
//
//  Created by ComarMet on 2017/10/31.
//  Copyright © 2017年 ComarMet. All rights reserved.
//

#import "UHeadMyCenterView.h"

@implementation UHeadMyCenterView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame{
    if (self =[super initWithFrame:frame]) {
        self.backgroundColor = [UIColor yellowColor];
        [self addView];
     
    }
    return self;
}
- (void)addView {
    self.frame  =CGRectMake(0, 0, KScreenWidth, 15*Iphone6ScaleWidth);
}
- (void)makeConstraints {
  
}

@end
