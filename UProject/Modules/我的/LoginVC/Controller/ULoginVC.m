//
//  ULoginVC.m
//  UProject
//
//  Created by ComarMet on 2017/10/25.
//  Copyright © 2017年 ComarMet. All rights reserved.
//

#import "ULoginVC.h"
#import "UForgetPassWordVC.h"
#import "URegisterVC.h"
#import "UForgetPassWordVC.h"

@interface ULoginVC ()
@property (nonatomic, strong) UIImageView * ltdImageView;  //icon
@property (nonatomic, strong) UILabel * userNameLb;  //账号
@property (nonatomic, strong) UITextField * userNameTf;  //输入
@property (nonatomic, strong) UIView * userLine;
@property (nonatomic, strong) UILabel *  userPassWordLb;  //密码
@property (nonatomic, strong) UITextField * userPassWordTf;  //输入
@property (nonatomic, strong) UIView * userPassWordLine;
@property (nonatomic, strong) UIButton * loginBtn;  //登录
@property (nonatomic, strong) UIButton * registerBtn;  //注册
@property (nonatomic, strong) UIButton * forgetBtn;   //忘记

@end
@implementation ULoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"登录";
    [self.view addSubview:self.ltdImageView];
    [self.view addSubview:self.userNameLb];
    [self.view addSubview:self.userNameTf];
    [self.view addSubview:self.userLine];
    [self.view addSubview:self.userPassWordLb];
    [self.view addSubview:self.userPassWordTf];
    [self.view addSubview:self.userPassWordLine];
    [self.view addSubview:self.loginBtn];
    [self.view addSubview:self.registerBtn];
    [self.view addSubview:self.forgetBtn];
    
    [self makeConstraints];
}
/**
 *  懒加载
 */
#pragma mark -------展示-----------
- (UIImageView *)ltdImageView {
    if (!_ltdImageView) {
        _ltdImageView = [[UIImageView alloc]init];
        _ltdImageView.image = [UIImage imageNamed:@"login_logo"];
    }
    return _ltdImageView;
}
- (UILabel *)userNameLb {
    if (!_userNameLb) {
        _userNameLb = [[UILabel alloc]init];
         _userNameLb.font = [UIFont systemFontOfSize:14];
        _userNameLb.text = @"账号";
        
    }
    return _userNameLb;
}
- (UITextField *)userNameTf {
    if (!_userNameTf) {
        _userNameTf = [[UITextField alloc]init];
        _userNameTf.placeholder = @"请输入您的手机号";
        _userNameTf.font = [UIFont systemFontOfSize:15];
    }
    return _userNameTf;
}
- (UIView *)userLine {
    if (!_userLine) {
        _userLine = [UIView new];
        _userLine.backgroundColor = CLineColor;
        
    }
    return _userLine;
}
- (UILabel *)userPassWordLb {
    if (!_userPassWordLb) {
        _userPassWordLb = [[UILabel alloc]init];
        _userPassWordLb.font = [UIFont systemFontOfSize:14];
        _userPassWordLb.text = @"密码";
        
    }
    return _userPassWordLb;
}
- (UITextField *)userPassWordTf {
    if (!_userPassWordTf) {
        _userPassWordTf = [[UITextField alloc]init];
        _userPassWordTf.placeholder = @"请输入您的登录密码";
        _userPassWordTf.font = [UIFont systemFontOfSize:15];
    }
    return _userPassWordTf;
}
- (UIView *)userPassWordLine {
    if (!_userPassWordLine) {
        _userPassWordLine = [UIView new];
        _userPassWordLine.backgroundColor =  CLineColor;
    }
    return _userPassWordLine;
}
- (UIButton *)loginBtn {
    if (!_loginBtn) {
        _loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_loginBtn setTitle:@"登录" forState:UIControlStateNormal];
        [_loginBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_loginBtn setBackgroundColor:CButtonColor];
        ViewRadius(_loginBtn, 4);
    }
    return _loginBtn;
}
- (UIButton *)registerBtn {
    if (!_registerBtn) {
        _registerBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_registerBtn setTitle:@"注册" forState:UIControlStateNormal];
        [_registerBtn setTitleColor:U_COLOR(51,51,51) forState:UIControlStateNormal];
        _registerBtn.titleLabel.font    = [UIFont systemFontOfSize: 13];
        [_registerBtn setContentHorizontalAlignment:UIControlContentHorizontalAlignmentRight];
        [_registerBtn addTarget:self action:@selector(registerClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _registerBtn;
}
- (UIButton *)forgetBtn {
    if (!_forgetBtn) {
        _forgetBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_forgetBtn setTitle:@"忘记密码" forState:UIControlStateNormal];
       _forgetBtn.titleLabel.font    = [UIFont systemFontOfSize: 13];
        [_forgetBtn setTitleColor:U_COLOR(51,51,51) forState:UIControlStateNormal];
        [_forgetBtn addTarget:self action:@selector(forgetClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _forgetBtn;
}

/**
 *  布局
 */
#pragma mark ------布局------
- (void)makeConstraints {
    
    kWeakSelf(self);
    [self.ltdImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(weakself.view.mas_centerX);
        make.top.mas_equalTo((kTopHeight+64)*Iphone6ScaleWidth);
        make.width.mas_equalTo(64*Iphone6ScaleWidth);
        make.height.mas_equalTo(64*Iphone6ScaleWidth);
    }];
    
    [self.userNameLb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakself.ltdImageView.mas_bottom).offset(60);
        make.leading.mas_equalTo(18);
    }];
    
    [self.userNameTf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(weakself.userNameLb.mas_centerY);
        make.left.mas_equalTo(weakself.userNameLb.mas_right).offset(44);
        make.size.mas_equalTo(CGSizeMake(200, 30));
    }];
    [self.userLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakself.userNameLb.mas_bottom).offset(14);
        make.leading.mas_equalTo(weakself.view.mas_leading).offset(18);
        make.trailing.mas_equalTo(weakself.view.mas_trailing).offset(-18);
        make.height.mas_equalTo(1);
    }];
    [self.userPassWordLb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakself.userLine.mas_bottom).offset(26);
        make.leading.mas_equalTo(weakself.userNameLb.mas_leading);
        make.size.mas_equalTo(weakself.userPassWordLb);

    }];
    [self.userPassWordTf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(weakself.userPassWordLb.mas_centerY);
        make.left.mas_equalTo(weakself.userPassWordLb.mas_right).offset(44);
        make.size.mas_equalTo(weakself.userNameTf);
    }];
    [self.userPassWordLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakself.userPassWordLb.mas_bottom).offset(14);
        make.leading.mas_equalTo(weakself.view.mas_leading).offset(18);
        make.trailing.mas_equalTo(weakself.view.mas_trailing).offset(-18);
        make.height.mas_equalTo(1);
    }];
    [self.loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakself.userPassWordLine.mas_bottom).offset(50);
        make.leading.mas_equalTo(weakself.view.mas_leading).offset(18);
        make.trailing.mas_equalTo(weakself.view.mas_trailing).offset(-18);
        make.height.mas_equalTo(42);
    }];
    [self.forgetBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakself.loginBtn.mas_bottom).offset(1);
        make.leading.mas_equalTo(weakself.loginBtn.mas_leading);
        make.size.mas_equalTo(CGSizeMake(60, 30));

    }];
    [self.registerBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(weakself.forgetBtn.mas_centerY);
        make.trailing.mas_equalTo(weakself.loginBtn.tracking).offset(-18);
        make.size.mas_equalTo(CGSizeMake(60, 30));
        
    }];
    
}
#pragma mark -------Click-------
- (void)forgetClick {
    [self.navigationController pushViewController:[UForgetPassWordVC new] animated:YES];
}

-(void)registerClick {
//    URegisterVC * registerVC = [[URegisterVC alloc]init];
//    [self.navigationController pushViewController:registerVC animated:YES];
    
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
