//
//  BaseChooseTableView.h
//  GoGoInsurance
//
//  Created by leco on 2018/1/9.
//  Copyright © 2018年 Liangqilin. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BaseChooseTableViewDelegate <NSObject>

- (void)selectWithRow:(NSInteger)row;

@end

@interface BaseChooseTableView : UIView <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *chooseTableView;
@property (nonatomic, strong) NSArray *dataArray;//选项
@property (nonatomic, assign) id<BaseChooseTableViewDelegate> mDelegate;

- (instancetype)initWithFrame:(CGRect)frame dataArray:(NSArray *)dataArray;

@end
