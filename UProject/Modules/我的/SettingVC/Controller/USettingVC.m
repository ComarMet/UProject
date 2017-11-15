//
//  USettingVC.m
//  UProject
//
//  Created by ComarMet on 2017/11/1.
//  Copyright © 2017年 ComarMet. All rights reserved.
//

#import "USettingVC.h"
#import "UMineCell.h"
static NSString * const MineCell = @"MineCell";

@interface USettingVC ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) UITableView * settingTableview;
@property (nonatomic, strong) NSArray * titleArray;

@end

@implementation USettingVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"设置";
    [self.view addSubview:self.mineTableview];
    [self makeConstraints];
    
}
- (NSArray *)titleArray {
    if (!_titleArray) {
        _titleArray = @[@"关于我们",@"分享APP",@"修改密码",@"清除缓存",@"意见反馈",@"联系客服"];
    }
    return _titleArray;
}
- (UITableView *)mineTableview {
    if (!_settingTableview) {
        _settingTableview = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
        _settingTableview.delegate = self;
        _settingTableview.dataSource = self;
        [_settingTableview registerClass:[UMineCell class] forCellReuseIdentifier:MineCell];
        _settingTableview.tableFooterView = [UIView new];
        _settingTableview.backgroundColor = [UIColor yellowColor];
        _settingTableview.bounces = NO;
        
    }
    return _settingTableview;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.titleArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UMineCell * cell  =[tableView dequeueReusableCellWithIdentifier:MineCell];
  
    if (indexPath.row!=3) {
          cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    }else {
        
        UILabel * l = [[UILabel alloc]init];
        l.text = @"5.7M";
        [cell.contentView addSubview:l];
        [l mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(cell.mas_centerY);
            make.trailing.mas_equalTo(-5);
            make.size.mas_equalTo(CGSizeMake(50, 30));
        }];
        
    }
    
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
