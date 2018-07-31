//
//  ViewController.m
//  QLChooseTableView
//
//  Created by 梁啟林 on 2018/7/31.
//  Copyright © 2018年 liangqilin. All rights reserved.
//

#import "ViewController.h"
#import "BaseChooseTool.h"//选项工具

@interface ViewController () <BaseChooseToolDelegate>

@property (nonatomic, strong) BaseChooseTool *chooseToolView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    
    [self performSelector:@selector(test) withObject:nil afterDelay:5];
}

- (void)test{
    //选项工具
    _chooseToolView = [[BaseChooseTool alloc] initWithData:nil];
    _chooseToolView.mDelegate = self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //这里的array负责显示的数据，必须是nsstring
    [_chooseToolView showChooseToolWithData:@[@"第1", @"第2", @"第3", @"第4"]];
}

#pragma mark -- BaseChooseToolDelegate 保险项选择代理
- (void)selectRow:(NSInteger)row{
    NSLog(@"\n ---select row: %ld---- \n", row);
}

@end
