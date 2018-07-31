//
//  ChooseToolCell.m
//  GoGoInsurance
//
//  Created by leco on 2018/1/9.
//  Copyright © 2018年 Liangqilin. All rights reserved.
//

#import "ChooseToolCell.h"
#import "Masonry.h"

@implementation ChooseToolCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupViews];
    }
    return self;
}

- (void)setupViews{
    [self.baseBottomView addSubview:self.dataLabel];
    [_dataLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(0);
        make.centerY.mas_equalTo(0);
    }];
}

#pragma mark -- Lazy
- (UILabel *)dataLabel{
    if (!_dataLabel) {
        _dataLabel = [[UILabel alloc] init];
        _dataLabel.textColor = [UIColor colorWithRed:51.0/255 green:51.0/255 blue:51.0/255 alpha:1];
        _dataLabel.font = [UIFont systemFontOfSize:14];
        _dataLabel.textAlignment = NSTextAlignmentCenter;
        [_dataLabel sizeToFit];
    }
    return _dataLabel;
}

@end
