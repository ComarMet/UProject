//
//  UForgetPassWordVC.m
//  UProject
//
//  Created by ComarMet on 2017/10/30.
//  Copyright © 2017年 ComarMet. All rights reserved.
//

#import "UForgetPassWordVC.h"

#define TOPLINE  26
#define LEADINGWIDTH 30
#define BOTTOMLINE 14

@interface UForgetPassWordVC ()
@property (nonatomic, strong) UILabel * userPhoneLb;
@property (nonatomic, strong) UITextField * userPhoneTf; //手机号
@property (nonatomic, strong) UIView * userPhoneLine;
@property (nonatomic, strong) UILabel * verificationCodeLb;
@property (nonatomic, strong) UITextField * verificationCodeTf;
@property (nonatomic, strong) UIView * shuLine;
@property (nonatomic, strong) JKCountDownButton * codeBtn;
@property (nonatomic, strong) UIView * verificationCodeLine;
@property (nonatomic, strong) UILabel * passWordLb;
@property (nonatomic, strong) UITextField * passWordTf;
@property (nonatomic, strong) UIView * passWordLine;
@property (nonatomic, strong) UILabel * againPassWordLb;
@property (nonatomic, strong) UITextField * againPassWordTf;
@property (nonatomic, strong) UIView * againPassWordLine;
//协议下面
@property (nonatomic, strong) UIButton * nextBtn;

@end

@implementation UForgetPassWordVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"忘记密码";
    [self.view addSubview:self.userPhoneLb];
    [self.view addSubview:self.userPhoneTf];
    [self.view addSubview:self.userPhoneLine]; //手机号
    [self.view addSubview:self.verificationCodeLb];
    [self.view addSubview:self.verificationCodeTf];
    [self.view addSubview:self.verificationCodeLine];
    [self.view addSubview:self.shuLine];
    [self.view addSubview:self.codeBtn];//验证码
    [self.view addSubview:self.passWordLb];
    [self.view addSubview:self.passWordTf];
    [self.view addSubview:self.passWordLine]; //密码
    [self.view addSubview:self.againPassWordLb];
    [self.view addSubview:self.againPassWordTf];
    [self.view addSubview:self.againPassWordLine]; //再次密码
    [self.view addSubview:self.nextBtn];
    [self makeConstraints];
}
/**
 *  懒加载
 */
-(UILabel *)userPhoneLb {
    if (!_userPhoneLb) {
        _userPhoneLb = [UILabel new];
        _userPhoneLb.text = @"手机号";
        _userPhoneLb.font = [UIFont systemFontOfSize:15];
    }
    return _userPhoneLb;
}
- (UITextField *)userPhoneTf {
    if (!_userPhoneTf) {
        _userPhoneTf = [UITextField new];
        _userPhoneTf.placeholder = @"请输入手机号";
    }
    return _userPhoneTf;
}
- (UIView *)userPhoneLine {
    if (!_userPhoneLine) {
        _userPhoneLine = [UIView new];
        _userPhoneLine.backgroundColor = CLineColor;
    }
    return _userPhoneLine;
}

-(UILabel *)verificationCodeLb {
    if (!_verificationCodeLb) {
        _verificationCodeLb = [UILabel new];
        _verificationCodeLb.text = @"验证码";
        _verificationCodeLb.font = [UIFont systemFontOfSize:15];
    }
    return _verificationCodeLb;
}
- (UITextField *)verificationCodeTf {
    if (!_verificationCodeTf) {
        _verificationCodeTf = [UITextField new];
        _verificationCodeTf.placeholder = @"验证码";
    }
    return _verificationCodeTf;
}
- (UIView *)shuLine {
    if (!_shuLine) {
        _shuLine = [UIView new];
        _shuLine.backgroundColor =CLineColor;
    }
    return _shuLine;
}
- (JKCountDownButton *)codeBtn {
    if (!_codeBtn) {
        _codeBtn = [JKCountDownButton buttonWithType:UIButtonTypeCustom];
        [_codeBtn setTitle:@"点击获取" forState:UIControlStateNormal];
        [_codeBtn addTarget:self action:@selector(codeClick:) forControlEvents:UIControlEventTouchUpInside];
        [_codeBtn setTitleColor:CLineColor forState:UIControlStateNormal];
        
    }
    return _codeBtn;
}
- (UIView *)verificationCodeLine {
    if (!_verificationCodeLine) {
        _verificationCodeLine = [UIView new];
        _verificationCodeLine.backgroundColor = CLineColor;
        
    }
    return _verificationCodeLine;
}
-(UILabel *)passWordLb {
    if (!_passWordLb) {
        _passWordLb = [UILabel new];
        _passWordLb.text = @"密码";
        _passWordLb.font = [UIFont systemFontOfSize:15];
    }
    return _passWordLb;
}
- (UITextField *)passWordTf {
    if (!_passWordTf) {
        _passWordTf = [UITextField new];
        _passWordTf.placeholder = @"请输入密码";
        _passWordTf.font = [UIFont systemFontOfSize:15];
    }
    return _passWordTf;
}
- (UIView *)passWordLine {
    if (!_passWordLine) {
        _passWordLine = [UIView new];
        _passWordLine.backgroundColor = CLineColor;
    }
    return _passWordLine;
}
-(UILabel *)againPassWordLb {
    if (!_againPassWordLb) {
        _againPassWordLb = [UILabel new];
        _againPassWordLb.text = @"确认密码";
        _againPassWordLb.font = [UIFont systemFontOfSize:15];
    }
    return _againPassWordLb;
}
- (UITextField *)againPassWordTf {
    if (!_againPassWordTf) {
        _againPassWordTf = [UITextField new];
        _againPassWordTf.placeholder = @"确认密码";
        _againPassWordTf.font = [UIFont systemFontOfSize:15];

    }
    return _againPassWordTf;
}
- (UIView *)againPassWordLine {
    if (!_againPassWordLine) {
        _againPassWordLine = [UIView new];
        _againPassWordLine.backgroundColor = CLineColor;
       
    }
    return _againPassWordLine;
}
- (UIButton *)nextBtn {
    if (!_nextBtn) {
        _nextBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_nextBtn setTitle:@"确认重置" forState:UIControlStateNormal];
//        [_nextBtn addTarget:self action:@selector(nextClick) forControlEvents:UIControlEventTouchUpInside];
        [_nextBtn setBackgroundColor:CButtonSeltectColor];
        ViewRadius(_nextBtn, 4);
        
    }
    return _nextBtn;
}
/**
 *  约束布局
 */
-(void)makeConstraints {
    //手机号
    kWeakSelf(self);
    [self.userPhoneLb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(kTopHeight+26);
        make.leading.mas_equalTo(18);
    }];
    [self.userPhoneTf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(weakself.userPhoneLb.mas_centerY);
        make.leading.mas_equalTo(weakself.userPhoneLb.mas_trailing).offset(LEADINGWIDTH);
        make.size.mas_equalTo(CGSizeMake(200, 30));
    }];
    [self.userPhoneLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakself.userPhoneTf.mas_bottom).offset(BOTTOMLINE);
        make.leading.mas_equalTo(18);
        make.trailing.mas_equalTo(-18);
        make.height.mas_equalTo(1);
    }];
    
    //验证码
    [self.verificationCodeLb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakself.userPhoneLine.mas_bottom).offset(TOPLINE);
        make.leading.mas_equalTo(weakself.userPhoneLb.mas_leading);
        make.size.mas_equalTo(weakself.userPhoneLb);
        
    }];
    [self.verificationCodeTf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(weakself.verificationCodeLb.mas_centerY);
        make.leading.mas_equalTo(weakself.verificationCodeLb.mas_trailing).offset(30);
        make.size.mas_equalTo(CGSizeMake(100, 30));
    }];
    
    
    [self.shuLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.mas_equalTo(weakself.codeBtn.mas_leading).offset(-5);
        make.centerY.mas_equalTo(weakself.verificationCodeTf.mas_centerY);
        make.size.mas_equalTo(CGSizeMake(1, 20));
    }];
    [self.codeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.mas_equalTo(-20);
        make.centerY.mas_equalTo(weakself.verificationCodeTf.mas_centerY);
        make.size.mas_equalTo(CGSizeMake(80, 25));
    }];
    [self.verificationCodeLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakself.verificationCodeTf.mas_bottom).offset(BOTTOMLINE);
        make.leading.mas_equalTo(weakself.userPhoneLine.mas_leading);
        make.size.mas_equalTo(weakself.userPhoneLine);
    }];
    //密码
    [self.passWordLb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakself.verificationCodeLine.mas_bottom).offset(TOPLINE);
        make.leading.mas_equalTo(weakself.userPhoneLb.mas_leading);
        make.size.mas_equalTo(weakself.userPhoneLb);
        
    }];
    [self.passWordTf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(weakself.passWordLb.mas_centerY);
        make.leading.mas_equalTo(weakself.passWordLb.mas_trailing).offset(LEADINGWIDTH);
        make.size.mas_equalTo(CGSizeMake(200, 30));
    }];
    [self.passWordLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakself.passWordTf.mas_bottom).offset(BOTTOMLINE);
        make.leading.mas_equalTo(weakself.userPhoneLine.mas_leading);
        make.size.mas_equalTo(weakself.userPhoneLine);
    }];
    //再次密码
    [self.againPassWordLb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakself.passWordLine.mas_bottom).offset(TOPLINE);
        make.leading.mas_equalTo(weakself.userPhoneLb.mas_leading);
        make.size.mas_equalTo(weakself.userPhoneLb);
        
    }];
    [self.againPassWordTf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(weakself.againPassWordLb.mas_centerY);
        make.leading.mas_equalTo(weakself.againPassWordLb.mas_trailing).offset(LEADINGWIDTH);
        make.size.mas_equalTo(CGSizeMake(200, 30));
    }];
    [self.againPassWordLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakself.againPassWordTf.mas_bottom).offset(BOTTOMLINE);
        make.leading.mas_equalTo(weakself.userPhoneLine.mas_leading);
        make.size.mas_equalTo(weakself.userPhoneLine);
    }];
    
    [self.nextBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakself.againPassWordLine.mas_bottom).offset(60);
        make.centerX.mas_equalTo(weakself.view.mas_centerX);
        make.size.mas_equalTo(CGSizeMake(339*Iphone6ScaleWidth, 42*Iphone6ScaleWidth));
    }];
  
}
#pragma maek ---------------方法---------------
- (void)codeClick:(JKCountDownButton *)sender {
    
    sender.enabled = NO;
    [sender startCountDownWithSecond:60];
    [sender countDownChanging:^NSString *(JKCountDownButton *countDownButton,NSUInteger second) {
        NSString *title = [NSString stringWithFormat:@"%zds",second];
        return title;
    }];
    [sender countDownFinished:^NSString *(JKCountDownButton *countDownButton, NSUInteger second) {
        countDownButton.enabled = YES;
        return @"点击重新获取";
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
