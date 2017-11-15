//
//  UMyCenterCell.m
//  UProject
//
//  Created by ComarMet on 2017/10/31.
//  Copyright © 2017年 ComarMet. All rights reserved.
//

#import "UMyCenterCell.h"

@interface UMyCenterCell()

@property (nonatomic, strong) UILabel *conditionLb;
@property (nonatomic, strong) UIImageView * arrowsImageView;
@property (nonatomic, strong) UIButton * selectBtn;
@property (nonatomic, strong) UITextField * writeTf;

@end



@implementation UMyCenterCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self addViews];
        [self makeConstraints];
    
    }
    return self;
}
- (void)addViews{
    [self.contentView addSubview:self.conditionLb];
    [self.contentView addSubview:self.arrowsImageView];
    [self.contentView addSubview:self.selectBtn];
    [self.contentView addSubview:self.writeTf];
    

}
- (void)makeConstraints {
    [self.conditionLb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(20);
        make.centerY.mas_equalTo(self.contentView.mas_centerY);
       
    }];
    [self.arrowsImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.mas_equalTo(-20);
        make.centerY.mas_equalTo(self.contentView.mas_centerY);
        make.size.mas_equalTo(CGSizeMake(13, 13));

    }];
   
    
}
-(void)setTeger:(NSInteger)teger {
    
    _teger = teger;
    if (teger==0) {
        [self.writeTf mas_makeConstraints:^(MASConstraintMaker *make) {
           make.centerY.mas_equalTo(self.contentView.mas_centerY);
            make.trailing.mas_equalTo(self.arrowsImageView.mas_leading);
            make.size.mas_equalTo(CGSizeMake(100, 30));
            
        }];
    }else {
        self.selectBtn.tag = teger;
        [self.selectBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(self.contentView.mas_centerY);
            make.trailing.mas_equalTo(self.arrowsImageView.mas_leading);
            make.size.mas_equalTo(CGSizeMake(100, 30));
        }];
    }
    
}
- (UILabel *)conditionLb {
    if (!_conditionLb) {
        _conditionLb = [UILabel new];
        _conditionLb.textColor = [UIColor yellowColor];
    }
    return _conditionLb;
}
- (UIImageView *)arrowsImageView {
    if (!_arrowsImageView) {
        _arrowsImageView = [UIImageView new];
        _arrowsImageView.image = [UIImage imageNamed:@"my_icon_data_more"];
    }
    return _arrowsImageView;
}
- (UIButton *)selectBtn {
    if (!_selectBtn) {
       _selectBtn = [UIButton buttonWithType:UIButtonTypeCustom];
       [_selectBtn setTitle:@"请选择" forState:UIControlStateNormal];
        [_selectBtn setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
       
        [_selectBtn addTarget:self action:@selector(aaa:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _selectBtn;
}
- (UITextField *)writeTf {
    if (!_writeTf) {
        _writeTf = [[UITextField alloc]init];
        _writeTf.placeholder = @"请选择";
    }
    return _writeTf;
}
- (void)aaa:(UIButton *)sender {
    NSLog(@"%d",sender.tag);
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
