//
//  FirstViewController.m
//  
//
//  Created by yanyuling on 16/6/8.
//
//

#import "NotifyViewController.h"
#import "Define.h"
#define seprateWidth  60
#define FirstPosX 40
@interface NotifyViewController ()

@end

@implementation NotifyViewController

@synthesize myNotifyTableView;
@synthesize myThanksTableView;
@synthesize myScrollView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    [self initTopSubViews];
    [self initBottonSubViews];
    self.navigationController.navigationBarHidden = YES;
    
    
}

-(void)initTopSubViews{
    UIView *headView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 50)];
    headView.backgroundColor = [UIColor whiteColor];
    
    UIButton* notifyBtn = [ UIButton buttonWithType:UIButtonTypeCustom ];
    notifyBtn.frame = CGRectMake(ScreenWidth/2-100, 10, 100, 40);
    [notifyBtn setTitle:@"通知" forState:UIControlStateNormal];
    [notifyBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [headView addSubview:notifyBtn];
    [notifyBtn addTarget:self action:@selector(notifyBtnCallback) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton* thanksBtn = [ UIButton buttonWithType:UIButtonTypeCustom ];
    thanksBtn.frame = CGRectMake(ScreenWidth/2 , 10, 100, 40);
    [thanksBtn setTitle:@"赞与感谢" forState:UIControlStateNormal];
    [thanksBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [headView addSubview:thanksBtn];
    [thanksBtn addTarget:self action:@selector(thanksBtnCallback) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:headView];
}
-(void)notifyBtnCallback{
    [myScrollView setContentOffset:CGPointMake(0, 0) animated:YES];
}
-(void)thanksBtnCallback{
    [myScrollView setContentOffset:CGPointMake(ScreenWidth, 0) animated:YES];

}
-(void)initBottonSubViews{
    myScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 50, ScreenWidth, ScreenHeight)];

    myScrollView.contentSize = CGSizeMake(ScreenWidth*2, ScreenHeight);
    myScrollView.backgroundColor = [UIColor lightGrayColor];
    myScrollView.pagingEnabled = YES ;
    myScrollView.contentOffset = CGPointMake(0, 0) ;
    myScrollView.scrollEnabled = YES ;
    myScrollView.bounces = NO ;
    myScrollView.showsHorizontalScrollIndicator = NO ;
    myScrollView.showsVerticalScrollIndicator = NO ;
    myScrollView.delegate = self ;
    
    [self.view addSubview:myScrollView];
    
    myNotifyTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight) style:UITableViewStylePlain];
    [myNotifyTableView setDelegate:self];
    [myNotifyTableView setDataSource:self];
    [myScrollView addSubview:myNotifyTableView];
    [myNotifyTableView reloadData];
    
    myThanksTableView = [[UITableView alloc] initWithFrame:CGRectMake(ScreenWidth, 0, ScreenWidth, ScreenHeight) style:UITableViewStylePlain];
    [myThanksTableView setDelegate:self];
    [myThanksTableView setDataSource:self];
    [myScrollView addSubview:myThanksTableView];
    [myThanksTableView reloadData];
    
}



//-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
//    
//    return 40;
//}

#pragma TableView Delegate API
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    if (scrollView == myScrollView) {
        
        CGPoint offset = scrollView.contentOffset ;
//        NSLog(@"offSetX : %f",offset.x);
        if (offset.x == 0) {
            
        }else if (offset.x == ScreenWidth){
            
            
        }
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (tableView == myNotifyTableView) {
        return 5;
    }
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *  cell = [[UITableViewCell alloc] init];
    if (tableView == myThanksTableView) {
        cell.backgroundColor = [UIColor grayColor];
    }else{
        cell.backgroundColor = [UIColor yellowColor];
    }
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
