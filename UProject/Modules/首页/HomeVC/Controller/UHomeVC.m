//
//  UHomeVC.m
//  UProject
//
//  Created by ComarMet on 2017/10/24.
//  Copyright © 2017年 ComarMet. All rights reserved.
//

#import "UHomeVC.h"
#import <WebKit/WebKit.h>
#import "ShareManager.h"

@interface UHomeVC ()<WKNavigationDelegate>

@property (nonatomic, strong) WKWebView * webView;

@end

@implementation UHomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self.view addSubview:self.tableView];
    
//    [[ShareManager sharedShareManager] showShareView];
      [[ShareManager sharedShareManager] showShareView];
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
