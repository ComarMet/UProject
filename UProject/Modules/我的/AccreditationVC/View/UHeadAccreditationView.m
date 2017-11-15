//
//  UHeadAccreditationView.m
//  UProject
//
//  Created by ComarMet on 2017/11/1.
//  Copyright © 2017年 ComarMet. All rights reserved.
//

#import "UHeadAccreditationView.h"

@interface UHeadAccreditationView()

@property (nonatomic, strong) UILabel * titleLb;
@property (nonatomic, strong) UIButton * seleteTagBtn;

@end


@implementation UHeadAccreditationView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addView];
        [self makeConstraints];
    }
    return self;
}
- (void)addView{
    [self addSubview:self.titleLb];
    [self addSubview:self.seleteTagBtn];
}
- (UILabel *)titleLb {
    if (!_titleLb) {
        _titleLb = [UILabel new];
        _titleLb.text = @"技能标签";
        _titleLb.font = FFont1;
    }
    return _titleLb;
}
- (UIButton *)seleteTagBtn {
    if (!_seleteTagBtn) {
        _seleteTagBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_seleteTagBtn setTitle:@"添加" forState:UIControlStateNormal];
        [_seleteTagBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        _seleteTagBtn.titleLabel.font    = [UIFont systemFontOfSize: 12];
        ViewBorderRadius(_seleteTagBtn, 5, 1, CNavBgColor);
    }
    return _seleteTagBtn;
}
- (void)makeConstraints {
//    kWeakSelf(self);
    [self.titleLb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(20);
        make.centerY.mas_equalTo(self.mas_centerY);
    }];
    [self.seleteTagBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.mas_equalTo(-20);
        make.centerY.mas_equalTo(self.mas_centerY);
        make.size.mas_equalTo(CGSizeMake(50, 20));
    }];
}

@end
