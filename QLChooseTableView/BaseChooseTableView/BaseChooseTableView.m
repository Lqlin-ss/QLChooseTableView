//
//  BaseChooseTableView.m
//  GoGoInsurance
//
//  Created by leco on 2018/1/9.
//  Copyright © 2018年 Liangqilin. All rights reserved.
//

#import "BaseChooseTableView.h"
#import "ChooseToolCell.h"
#import "Masonry.h"

@implementation BaseChooseTableView

- (instancetype)initWithFrame:(CGRect)frame dataArray:(NSArray *)dataArray{
    self = [super initWithFrame:frame];
    if (self) {
        _dataArray = dataArray;
        [self setupViews];
    }
    return self;
}

- (void)setupViews{
    [self addSubview:self.chooseTableView];
    [_chooseTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(0);
        make.left.mas_equalTo(0);
        make.bottom.mas_equalTo(0);
        make.right.mas_equalTo(0);
    }];
}

#pragma mark -- UITableViewDelegateAction
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (_mDelegate && [_mDelegate respondsToSelector:@selector(selectWithRow:)]) {
        [_mDelegate selectWithRow:indexPath.row];
    }
}

#pragma mark -- UITableViewDelegate, UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return _dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellId = @"ChooseToolCellIdentifier";
    ChooseToolCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (!cell) {
        cell = [[ChooseToolCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    cell.dataLabel.text = _dataArray[indexPath.row];
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

#pragma mark -- Lazy
- (UITableView *)chooseTableView{
    if (!_chooseTableView) {
        _chooseTableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _chooseTableView.delegate = self;
        _chooseTableView.dataSource = self;
        _chooseTableView.rowHeight = 50;
        _chooseTableView.backgroundColor = [UIColor colorWithRed:248.0/255.0 green:248.0/255.0 blue:248.0/255.0 alpha:1];
        _chooseTableView.showsVerticalScrollIndicator = NO;
        _chooseTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_chooseTableView registerClass:[ChooseToolCell class] forCellReuseIdentifier:@"ChooseToolCellIdentifier"];
    }
    return _chooseTableView;
}

@end
