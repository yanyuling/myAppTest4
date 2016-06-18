//
//  FirstViewController.m
//  
//
//  Created by yanyuling on 16/6/8.
//
//

#import "PrivateMsgViewController.h"
#import "Define.h"
@interface PrivateMsgViewController ()

@end

@implementation PrivateMsgViewController
@synthesize myTableView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIView *backView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, HEIGHT(240) + APP_NAVIGATION_HEIGHT + StatusHeight)];
    
    backView.backgroundColor = [UIColor colorWithRed:255 green:0 blue:0 alpha:1.0];
    [self.view addSubview:backView];
    [self.view setBackgroundColor:[UIColor colorWithRed:255 green:0 blue:0 alpha:1.0]];
    self.navigationItem.title = @"私信";

    UIBarButtonItem* leftBtnItem = [[UIBarButtonItem alloc] initWithTitle:@"编辑" style:UIBarButtonItemStyleDone target:self action:@selector(leftBtnClickCallback)];
    self.navigationItem.leftBarButtonItem = leftBtnItem;
    
//    UIButton* writeBtn = [[UIButton alloc] init];
//    [writeBtn setBackgroundImage:[UIImage  imageNamed:@"ZHActionEditAnswerNormal_iOS7@2x.png"] forState:UIControlStateNormal];
  
    UIBarButtonItem* rightBtnItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"ZHActionEditAnswerNormal_iOS7@2x.png"] style:UIBarButtonItemStyleDone target:self action:@selector(rightBtnClickCallback)];
    self.navigationItem.rightBarButtonItem = rightBtnItem;
    
    myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight) style:UITableViewStyleGrouped];
    [myTableView setDelegate:self];
    [myTableView setDataSource:self];
    [self.view addSubview:myTableView];
    [myTableView reloadData];
    
}

-(void) leftBtnClickCallback{
    NSLog(@"leftBtnClickCallback >>>>> ");
}
-(void) rightBtnClickCallback{
    NSLog(@"rightBtnClickCallback >>>>> ");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
}

#pragma TableView Delegate API

-(void)addQuestionBtnCallBck{
    NSLog(@"addQuestionBtnCallBck >>>");
    //应该弹出搜搜UI
}
-(void)searchTopicBtnCallBck{
    NSLog(@"searchTopicBtnCallBck >>>");
    //弹出添加问题UI
}

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
