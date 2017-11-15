//
//  UAccreditationVC.m
//  UProject
//
//  Created by ComarMet on 2017/10/31.
//  Copyright © 2017年 ComarMet. All rights reserved.
//

#import "UAccreditationVC.h"
#import "UHeadAccreditationView.h"
#import "UFoodAccreditationView.h"
#import "UMyCenterCell.h"
#import "UTagGroupCell.h"

static NSString * const uTagGroupCell = @"tagGroupCell";
@interface UAccreditationVC ()
@property (nonatomic, strong) UITableView * accreTableview;
@property (nonatomic, strong) UHeadAccreditationView * headView;
@property (nonatomic, strong) UFoodAccreditationView * foodView;


@end

@implementation UAccreditationVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"认证信息";
    [self.view addSubview:self.accreTableview];
    [self makeConstraints];
    
}
- (UHeadAccreditationView *)headView {
    if (!_headView) {
        _headView =  [[UHeadAccreditationView alloc]initWithFrame:CGRectMake(0, 0, KScreenWidth, 40*Iphone6ScaleWidth)];
    }
    return _headView;
}
- (UFoodAccreditationView *)foodView {
    if (!_foodView) {
        _foodView =  [[UFoodAccreditationView alloc]initWithFrame:CGRectMake(0, 0, KScreenWidth, 100*Iphone6ScaleWidth)];
    }
    return _foodView;
}
- (UITableView *)accreTableview {
    if (!_accreTableview) {
        _accreTableview = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
   
        _accreTableview.tableHeaderView = self.headView;
        _accreTableview.tableFooterView = self.foodView;
        [_accreTableview registerClass:[UTagGroupCell class] forCellReuseIdentifier:uTagGroupCell];
        _accreTableview.separatorStyle = UITableViewCellSeparatorStyleNone;

    }
    return _accreTableview;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UMyCenterCell *cell = [tableView dequeueReusableCellWithIdentifier:@"abcdef"];
    cell.teger = indexPath.row;
    return cell;
}


#pragma mark - makeConstraints布局--
-(void)makeConstraints{
    [self.accreTableview mas_makeConstraints:^(MASConstraintMaker *make) {
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
