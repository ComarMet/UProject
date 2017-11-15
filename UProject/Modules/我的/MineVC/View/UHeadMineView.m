//
//  UHeadMineView.m
//  UProject
//
//  Created by ComarMet on 2017/11/1.
//  Copyright © 2017年 ComarMet. All rights reserved.
//

#import "UHeadMineView.h"


@interface UHeadMineView ()
@property (nonatomic, strong) UIImageView * userHeadImage;
@property (nonatomic, strong) UILabel * userNameLb;
@property (nonatomic, strong) UILabel * userNoLb;
@property (nonatomic, strong) UIView * xiaLineView;
@end
@implementation UHeadMineView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
       
        [self addSubview:self.userHeadImage];
        [self addSubview:self.userNameLb];
        [self addSubview:self.userNoLb];
        [self addSubview:self.xiaLineView];
        [self makeConstraints];
    }
    return self;
}
- (UIImageView *)userHeadImage {
    if (!_userHeadImage) {
        _userHeadImage = [UIImageView new];
        _userHeadImage.backgroundColor = [UIColor yellowColor];
        _userHeadImage.image = [UIImage imageNamed:@"myorder_icon_pay"];
    }
    return _userHeadImage;
}
- (UILabel *)userNameLb {
    if (!_userNameLb) {
        _userNameLb = [UILabel new];
        _userNameLb.text = @"李师傅 138001380000";
    }
    return _userNameLb;
}
- (UILabel *)userNoLb {
    if (!_userNoLb) {
        _userNoLb = [UILabel new];
        _userNoLb.text = @"编号:xb8798";
    }
    return _userNoLb;
}
- (UIView *)xiaLineView {
    if (!_xiaLineView) {
        _xiaLineView = [UIView new];
        _xiaLineView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    }
    return _xiaLineView;
}
- (void)makeConstraints {
    kWeakSelf(self);
    [self.userHeadImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(20);
        make.centerY.mas_equalTo(weakself.mas_centerY).offset(-5);
        make.size.mas_equalTo(CGSizeMake(80, 80));
        ViewRadius(weakself.userHeadImage, 40);
    }];
    [self.userNameLb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(weakself.userHeadImage.mas_centerY).offset(-10);
        make.leading.mas_equalTo(weakself.userHeadImage.mas_trailing).offset(20);
        make.height.mas_equalTo(30);
        make.trailing.mas_equalTo(-20);
    }];
    [self.userNoLb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(weakself.userHeadImage.mas_centerY).offset(10);
        make.leading.mas_equalTo(weakself.userHeadImage.mas_trailing).offset(20);
        make.height.mas_equalTo(30);
        make.trailing.mas_equalTo(-20);
    }];
    [self.xiaLineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.mas_equalTo(0);
        make.bottom.trailing.mas_equalTo(0);
        make.height.mas_equalTo(10);
    }];
}

@end
