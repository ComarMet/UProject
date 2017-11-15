//
//  CMTabBar.m
//  UProject
//
//  Created by ComarMet on 2017/10/25.
//  Copyright © 2017年 ComarMet. All rights reserved.
//

#import "CMTabBar.h"

@interface CMTabBar()

@property (nonatomic,assign)UIEdgeInsets oldSafeAreaInsets;

@end

@implementation CMTabBar

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void) safeAreaInsetsDidChange
{
    [super safeAreaInsetsDidChange];
    if(self.oldSafeAreaInsets.left != self.safeAreaInsets.left ||
       self.oldSafeAreaInsets.right != self.safeAreaInsets.right ||
       self.oldSafeAreaInsets.top != self.safeAreaInsets.top ||
       self.oldSafeAreaInsets.bottom != self.safeAreaInsets.bottom)
    {
        self.oldSafeAreaInsets = self.safeAreaInsets;
        [self invalidateIntrinsicContentSize];
        [self.superview setNeedsLayout];
        [self.superview layoutSubviews];
    }
    
}

- (CGSize) sizeThatFits:(CGSize) size
{
    CGSize s = [super sizeThatFits:size];
    if(@available(iOS 11.0, *))
    {
        CGFloat bottomInset = self.safeAreaInsets.bottom;
        if( bottomInset > 0 && s.height < 50) {
            s.height += bottomInset;
        }
    }
    return s;
}

@end
