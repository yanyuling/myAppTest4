//
//  FirstViewController.m
//  
//
//  Created by yanyuling on 16/6/8.
//
//

#import "MoreViewController.h"
#import "Define.h"
#define preHeight 60
#define preHeight2 65
@interface MoreViewController ()
@property(nonatomic,strong) UITableView* myTableView;
@end

@implementation MoreViewController
@synthesize myTableView;
@synthesize myDic;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView* backView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight)];
    backView.backgroundColor = [ UIColor colorWithRed:0 green:181 blue:181 alpha:1.0 ] ;
    [self.view addSubview:backView];
    self.view.frame = CGRectMake(0, 0, ScreenWidth, ScreenHeight);
    self.navigationItem.title = @"更多";
    [self initUIElements];
}
-(void)createparemesDic{
    myDic = [[NSMutableDictionary alloc] init];
    
}
-(void)initUIElements{
    
    myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0,ScreenWidth, ScreenHeight)];
    myTableView.delegate = self;
    [self.view addSubview:myTableView];
    [myTableView reloadData];
    //个人头像
    //我的关注
    [self createViewWithParams:CGRectMake(0, 100, ScreenWidth, preHeight) :@"ZHFollow_Empty_iOS7@2x.png" :@"我的关注"];
     //我的收藏
    [self createViewWithParams:CGRectMake(0, 100 + preHeight2*1, ScreenWidth, preHeight) :@"ZHLiveProfileIcon@2x.png" :@"我的收藏"];
    //我的草稿
    [self createViewWithParams:CGRectMake(0, 100 + preHeight2*2, ScreenWidth, preHeight) :@"ZHLiveProfileIcon@2x.png" :@"我的草稿"];
    //最近浏览
    [self createViewWithParams:CGRectMake(0, 100 + preHeight2*3, ScreenWidth, preHeight) :@"ZHLiveProfileIcon@2x.png" :@"我的关注"];
    //我的Live
    [self createViewWithParams:CGRectMake(0, 100 + preHeight2*4, ScreenWidth, preHeight) :@"ZHLiveProfileIcon@2x.png" :@"我的 Live"];
    //反馈帮助中心
    [self createViewWithParams:CGRectMake(0, 100 + preHeight2*5, ScreenWidth, preHeight) :@"ZHLiveProfileIcon@2x.png" :@"反馈帮助中心"];
    //夜间模式
    [self createViewWithParams:CGRectMake(0, 100 + preHeight2*6, ScreenWidth, preHeight) :@"ZHLiveProfileIcon@2x.png" :@"夜间模式"];
     //设置
    [self createViewWithParams:CGRectMake(0, 100 + preHeight2*7, ScreenWidth, preHeight) :@"ZHLiveProfileIcon@2x.png" :@"设置"];
    
   
}
-(void)createViewWithParams:(CGRect)frame :(NSString*)imgPath :(NSString*)title{
    UIView* tmpView = [[UIView alloc] initWithFrame:frame];
    tmpView.backgroundColor = [UIColor whiteColor];
    UIImageView* flagImg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imgPath]];
    flagImg.frame = CGRectMake(10, 8, 50, 44);
    [tmpView addSubview:flagImg];
    
    //ZHDisclosureIndicator@3x.png
    UILabel* titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 0, 100, 60)];
    titleLabel.textColor = [UIColor grayColor];
    titleLabel.text = title;
    [tmpView addSubview:titleLabel];
    
    UIImageView* lineImg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ZHDisclosureIndicator@3x.png"]];
    lineImg.frame = CGRectMake(frame.size.width-40, 12, 36, 36);
    [tmpView addSubview:lineImg];
    
    UIImageView* lineImg2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Night_ZHActionDivider_iOS7@2x.png"]];
    lineImg2.frame = CGRectMake(40, 60, 828, 2);
    [tmpView addSubview:lineImg2];
    //Night_ZHActionDivider_iOS7@2x.png
    
    [self.view addSubview:tmpView];
//    return tmpView;
}

#pragma TableView Delegate API


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
 
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *  cell = [[UITableViewCell alloc] init];
    
    return cell;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // 设置分区个数
    // 返回字典中的数据个数
    return 1;
}
//
//- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
//    // 设置每个分区的区头标题
//    // 返回字典中对应地方的  key  值
//
//}

//- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView{
//    // 设置索引标题
//    // 返回字典中所有 key 值组成的数组
//
//}

//   自定义设置行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return  70 ;
}

// 设置编辑样式( 点击编辑的时候。显示+ 还是显示 - )
//- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
//    // 每个分区的第一行显示 +  其余显示 -
//    if ( indexPath.row == 0 ) {
//        return  UITableViewCellEditingStyleInsert ;
//    }
//    else {
//        return UITableViewCellEditingStyleDelete ;
//    }
//}
/*****------------------------------***/
//  提交编辑样式
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    //  点击删除的时候，删除联系人，然后删除cell
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath{
    return  YES ;
}
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath {
    
}

- (NSIndexPath *)tableView:(UITableView *)tableView targetIndexPathForMoveFromRowAtIndexPath:(NSIndexPath *)sourceIndexPath toProposedIndexPath:(NSIndexPath *)proposedDestinationIndexPath {
    return sourceIndexPath;
    //
}
/***************/
//实现点击一个 cell 进入详情页面
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //    HomePageDetailViewController* detailPage = [[HomePageDetailViewController alloc] init];
    //    [ self.navigationController pushViewController:detailPage  animated:YES ] ;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
