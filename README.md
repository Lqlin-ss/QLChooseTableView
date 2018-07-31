# QLChooseTableView
从底部弹出来的tableView
[图片]

只需要在用到的页面导入： #import "BaseChooseTool.h"
遵循代理： BaseChooseToolDelegate

创建一个属性：  @property (nonatomic, strong) BaseChooseTool *chooseToolView;

初始化
_chooseToolView = [[BaseChooseTool alloc] initWithData:nil];
_chooseToolView.mDelegate = self;

实现代理方法
#pragma mark -- BaseChooseToolDelegate
- (void)selectRow:(NSInteger)row{
NSLog(@"\n ---select row: %ld---- \n", row);
}
