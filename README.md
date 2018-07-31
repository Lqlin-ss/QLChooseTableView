# QLChooseTableView
从底部弹出来的tableView
[图片]


1.只需要在用到的页面导入： #import "BaseChooseTool.h"
2.遵循代理： BaseChooseToolDelegate

3.创建一个属性：  @property (nonatomic, strong) BaseChooseTool *chooseToolView;

4.初始化
_chooseToolView = [[BaseChooseTool alloc] initWithData:nil];
_chooseToolView.mDelegate = self;

5.实现代理方法
#pragma mark -- BaseChooseToolDelegate
- (void)selectRow:(NSInteger)row{
    NSLog(@"\n ---select row: %ld---- \n", row);
}
