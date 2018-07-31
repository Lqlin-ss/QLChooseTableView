//
//  BaseCellView.m
//  GoGoInsurance
//
//  Created by leco on 2018/1/2.
//  Copyright © 2018年 Liangqilin. All rights reserved.
//

#import "BaseCellView.h"

@implementation BaseCellView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

//分割线
- (void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    
    UIBezierPath *bottomPath = [UIBezierPath bezierPath];
    [bottomPath moveToPoint:CGPointMake(20, rect.size.height)];
    [bottomPath addLineToPoint:CGPointMake(rect.size.width, rect.size.height)];
    [bottomPath setLineWidth:0.5];
    [[UIColor colorWithRed:238/255 green:238/255 blue:238/255 alpha:1] setStroke];
    [bottomPath stroke];
}

@end
