//
//  UMyCenterVC.m
//  UProject
//
//  Created by ComarMet on 2017/10/31.
//  Copyright © 2017年 ComarMet. All rights reserved.
//

#import "UMyCenterVC.h"
#import "UMyCenterCell.h"
#import "UHeadMyCenterView.h"
#import "UMyCenterCell.h"
#import "UFoodMyCenterView.h"
#import "UAccreditationVC.h"

@interface UMyCenterVC ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView * myTableView;

@end

@implementation UMyCenterVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"个人信息";
    [self.view addSubview:self.myTableView];
    [self makeConstraints];
}

- (UITableView *)myTableView {
    if(!_myTableView){
        _myTableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
        _myTableView.delegate = self;
        _myTableView.dataSource = self;
        UHeadMyCenterView * headView= [[UHeadMyCenterView alloc]init];
        [_myTableView registerClass:[UMyCenterCell class] forCellReuseIdentifier:@"abcdef"];
        _myTableView.tableHeaderView = headView;
          UFoodMyCenterView * foodView= [[UFoodMyCenterView alloc]init];
        _myTableView.tableFooterView = foodView;

        [foodView setReturnBlock:^(NSString *str) {
            UAccreditationVC * accredtationVC = [[UAccreditationVC alloc]init];
            [self.navigationController pushViewController:accredtationVC animated:YES];
        }];
        
        
//        _customV.returnBlock = ^(void){
//            weakSelf.bgview.hidden = YES;
//        };
    }
    return _myTableView;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {

    UIView * view;
    if (section==0) {
        view   = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 00, 00)];
        view.backgroundColor = [UIColor redColor];
        }else {
        view   = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
        view.backgroundColor = [UIColor blueColor];
    }
    return view;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    if (section==0) {
        return 20;
    }else{
        return 0;
    }
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section==0) {
        return 5;
    }else return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
 
    UMyCenterCell *cell = [tableView dequeueReusableCellWithIdentifier:@"abcdef"];
    cell.teger = indexPath.row;
    return cell;
}

- (void)makeConstraints {
    [self.myTableView mas_makeConstraints:^(MASConstraintMaker *make) {
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
