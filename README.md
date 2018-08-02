# QLChooseTableView
从底部弹出来的tableView，单行文字，固定cell高度，点击背景可以收回隐藏。
因为一开始是自己用的，没想到分享出来，所以封装得不好，很多写死的东西，自己看看随便改~

### 使用方法
把Base、BaseChooseTableView、Masonry三个文件夹直接拖入你的工程。

1.只需要在用到的页面导入：
``` #import "BaseChooseTool.h" ```

2.遵循代理：
```BaseChooseToolDelegate```

3.创建一个属性： 
```@property (nonatomic, strong) BaseChooseTool *chooseToolView;```

4.初始化
```
_chooseToolView = [[BaseChooseTool alloc] initWithData:nil];
_chooseToolView.mDelegate = self;
```

5.实现代理方法
```
#pragma mark -- BaseChooseToolDelegate
- (void)selectRow:(NSInteger)row{
    NSLog(@"\n ---select row: %ld---- \n", row);
}
```


附：Base文件夹只是对cell的一个封装，只是加了一个底部自定义分割线。
BaseChooseTableView文件夹就是最主要的文件了，源码很简单随便看随便改。
Masonry文件夹就是布局用的，如果你的项目已经导了就不需要这个文件了。
