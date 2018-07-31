//
//  BaseChooseTool.m
//  GoGoInsurance
//
//  Created by leco on 2018/1/9.
//  Copyright © 2018年 Liangqilin. All rights reserved.
//

#import "BaseChooseTool.h"


#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define kMaxCount 5 //最大显cell示个数，用于确定tableView高度，其余的滑动显示

@implementation BaseChooseTool

- (instancetype)initWithData:(NSArray *)dataArray{
    self = [super init];
    if (self) {
        [self initToolViewOnWindow:dataArray];
        _tableViewHeight = dataArray.count * 50;
    }
    return self;
}

- (void)initToolViewOnWindow:(NSArray *)dataArray{
    _maskBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [_maskBtn setFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    _maskBtn.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];
    [_maskBtn addTarget:self action:@selector(hideSelf) forControlEvents:UIControlEventTouchUpInside];
    _maskBtn.hidden = YES;
    [[UIApplication sharedApplication].keyWindow addSubview:_maskBtn];
    
    _chooseView = [[BaseChooseTableView alloc] initWithFrame:CGRectMake(0, SCREEN_HEIGHT, SCREEN_WIDTH, _tableViewHeight) dataArray:dataArray];
    _chooseView.mDelegate = self;
    [_maskBtn addSubview:_chooseView];
}

#pragma mark -- AnyActions
- (void)hideSelf{//隐藏城市选择器
    [UIView animateWithDuration:0.5 animations:^{
        _maskBtn.hidden = YES;
        _chooseView.frame = CGRectMake(0, SCREEN_HEIGHT, SCREEN_WIDTH, _tableViewHeight);
    }];
}

- (void)showChooseToolWithData:(NSArray *)dataArray{//显示
    //修改数据源 刷新
    _chooseView.dataArray = dataArray;
    _tableViewHeight = dataArray.count * 50;
    if (dataArray.count > kMaxCount) {
        _tableViewHeight = kMaxCount * 50;
    }
    [_chooseView.chooseTableView reloadData];
    
    [UIView animateWithDuration:0.3 animations:^{
        _maskBtn.hidden = NO;
        _chooseView.frame = CGRectMake(0, SCREEN_HEIGHT - _tableViewHeight, SCREEN_WIDTH, _tableViewHeight);
    }];
}

#pragma mark -- BaseChooseTableViewDelegate 选择数据
- (void)selectWithRow:(NSInteger)row{
    [self hideSelf];
    if (_mDelegate && [_mDelegate respondsToSelector:@selector(selectRow:)]) {
        [_mDelegate selectRow:row];
    }
}

@end
