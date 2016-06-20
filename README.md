# myAppTest4
zh_demo
学习练手用


实体文件夹也分一下层
删除文件的时候选择 Move to Trash 
  如果选择 Remove Refrence 文件就还在文件夹内，只是删除了工程内的文件路径，没有删除文件
  

AppDelegate 
32行
HomePageViewController *firstCtr = [[HomePageViewController alloc] init];

HomePageViewController 
29行 属性要么写成 self.myTableView 要么写成 _myTableView 
39行 [super viewWillAppear:animated];
91行 cell 创建方法不对

HomePageDetailViewController
30行 命名问题
45行

DiscoverViewController--属性命名问题
24行
40行
100行
120行
196行

NotifyViewController 和上面的一样

PrivateMsgViewController:
http://blog.csdn.net/huifeidexin_1/article/details/8078118

MoreViewController:
23、 30、41、73 行：

ZHModel.h
11、26行
ZHModel.m
36行

AnswerModel.m 
40行

QuestionModel.h
10行
