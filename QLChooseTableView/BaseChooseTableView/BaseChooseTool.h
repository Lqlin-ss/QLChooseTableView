//
//  BaseChooseTool.h
//  GoGoInsurance
//
//  Created by leco on 2018/1/9.
//  Copyright © 2018年 Liangqilin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseChooseTableView.h"

@protocol BaseChooseToolDelegate <NSObject>

- (void)selectRow:(NSInteger)row;

@end

@interface BaseChooseTool : NSObject <BaseChooseTableViewDelegate>

@property (nonatomic, strong) UIButton *maskBtn;//全屏遮罩
@property (nonatomic, strong) BaseChooseTableView *chooseView;//选择tableView工具
@property (nonatomic, assign) NSInteger tableViewHeight;//tableview的高度

@property (nonatomic, assign) id<BaseChooseToolDelegate> mDelegate;

- (instancetype)initWithData:(NSArray *)dataArray;
- (void)showChooseToolWithData:(NSArray *)dataArray;

@end
