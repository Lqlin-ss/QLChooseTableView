//
//  BaseCell.m
//  GoGoInsurance
//
//  Created by leco on 2018/1/4.
//  Copyright © 2018年 Liangqilin. All rights reserved.
//

#import "BaseCell.h"
#import "Masonry.h"

@implementation BaseCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _baseBottomView = [[BaseCellView alloc] init];
        _baseBottomView.backgroundColor = [UIColor whiteColor];
        [self.contentView addSubview:_baseBottomView];
        [_baseBottomView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(0);
            make.left.mas_equalTo(0);
            make.bottom.mas_equalTo(0);
            make.right.mas_equalTo(0);
        }];
    }
    return self;
}

- (void)setupViews{
    
}

@end
