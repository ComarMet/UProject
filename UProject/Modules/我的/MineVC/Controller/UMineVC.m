//
//  UMineVC.m
//  UProject
//
//  Created by ComarMet on 2017/10/24.
//  Copyright © 2017年 ComarMet. All rights reserved.
//

#import "UMineVC.h"
#import "ULoginVC.h"
#import "UMineCell.h"
#import "UHeadMineView.h"
#import "USettingVC.h"

static NSString * const MineCell = @"MineCell";


@interface UMineVC ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) UITableView * mineTableview;
@property (nonatomic, strong) UHeadMineView * headView;
@property (nonatomic, strong) NSArray * titleArray;

@end

@implementation UMineVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self.view addSubview:self.mineTableview];
//    [self makeConstraints];
  
}
- (NSArray *)titleArray {
    if (!_titleArray) {
        _titleArray = @[@"认证信息",@"接单范围",@"收益信息",@"提现管理",@"我的评价",@"设置"];
    }
    return _titleArray;
}
- (UHeadMineView *)headView {
    if (!_headView) {
        _headView = [[UHeadMineView alloc]initWithFrame:CGRectMake(0, 0, KScreenWidth, 120*Iphone6ScaleWidth)];
    }
    return _headView;
}
- (UITableView *)mineTableview {
    if (!_mineTableview) {
        _mineTableview = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
        _mineTableview.delegate = self;
        _mineTableview.dataSource = self;
        [_mineTableview registerClass:[UMineCell class] forCellReuseIdentifier:MineCell];
        _mineTableview.tableHeaderView = self.headView;
        _mineTableview.tableFooterView = [UIView new];
        
    }
    return _mineTableview;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.titleArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UMineCell * cell  =[tableView dequeueReusableCellWithIdentifier:MineCell];
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text  = self.titleArray[indexPath.row];
    return cell;
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:{
            
        }
            break;
        case 1:{
            
        }
            break;
        case 2:{
            
        }
            break;
        case 3:{
            
        }
            break;
        case 4:{
            
        }
            break;
        case 5:{
            [self.navigationController pushViewController:[USettingVC new] animated:YES];
            
        }
            break;
            
        default:
            break;
    }
}
- (void)makeConstraints {
    [self.mineTableview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(kNavBarHeight+kStatusBarHeight);
        make.leading.trailing.mas_equalTo(0);
        make.bottom.mas_equalTo(0);
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
