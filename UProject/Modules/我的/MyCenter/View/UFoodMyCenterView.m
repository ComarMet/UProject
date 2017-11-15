//
//  UFoodMyCenterView.m
//  UProject
//
//  Created by ComarMet on 2017/10/31.
//  Copyright © 2017年 ComarMet. All rights reserved.
//

#import "UFoodMyCenterView.h"


@interface UFoodMyCenterView ()

@property (nonatomic, strong) UIButton * nextBtn;

@end

@implementation UFoodMyCenterView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.frame = CGRectMake(0, 0,KScreenWidth , 50*Iphone6ScaleWidth);
        [self addView];
        [self makeConstraints];
    }
    return self;
}
- (void)addView {
    [self addSubview:self.nextBtn];
}
- (void)makeConstraints {
    [self.nextBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(20);
        make.trailing.mas_equalTo(-20);
        make.center.mas_equalTo(self);
        make.height.mas_equalTo(30);
    }];
}
- (UIButton *)nextBtn {
    if (!_nextBtn) {
        _nextBtn  = [UIButton buttonWithType:UIButtonTypeCustom];
        [_nextBtn setTitle:@"下一步" forState:UIControlStateNormal];
        [_nextBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_nextBtn addTarget:self action:@selector(nextClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _nextBtn;
}
- (void)nextClick {
    self.returnBlock(@"fdasfd");
}
@end
