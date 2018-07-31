//
//  BaseCell.h
//  GoGoInsurance
//
//  Created by leco on 2018/1/4.
//  Copyright © 2018年 Liangqilin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseCellView.h"

@interface BaseCell : UITableViewCell

@property (nonatomic, strong) BaseCellView *baseBottomView;//基类cell都在底部加一个视图作为容器，自带分割线

@end
