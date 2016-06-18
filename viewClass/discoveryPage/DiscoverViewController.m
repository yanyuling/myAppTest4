//
//  FirstViewController.m
//  
//
//  Created by yanyuling on 16/6/8.
//
//

#import "DiscoverViewController.h"
#import "Define.h"
@interface DiscoverViewController ()

@end
#define seprateWidth  60
#define FirstPosX 40
@implementation DiscoverViewController
@synthesize myScrollView,myRecommoneTableView,myCircleDeskTableView,myHotTableView,myCollectionTableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view setBackgroundColor:[UIColor lightGrayColor]];
    
    [self initTopSubViews];
    [self initBottonSubViews];
    self.navigationController.navigationBarHidden = YES;
    
    
}

-(void)initTopSubViews{
    UIView *headView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 50)];
    headView.backgroundColor = [UIColor whiteColor];
    
    UIButton* recommendBtn = [ UIButton buttonWithType:UIButtonTypeCustom ];
    recommendBtn.frame = CGRectMake(FirstPosX, 10, 100, 40);
    [recommendBtn setTitle:@"推荐" forState:UIControlStateNormal];
    [recommendBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [headView addSubview:recommendBtn];

    [recommendBtn addTarget:self action:@selector(recommendBtnCallback) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton* circleBtn = [ UIButton buttonWithType:UIButtonTypeCustom ];
    circleBtn.frame = CGRectMake(FirstPosX+seprateWidth*2, 10, 100, 40);
    [circleBtn setTitle:@"圆桌" forState:UIControlStateNormal];
    [circleBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];

    [headView addSubview:circleBtn];
    [circleBtn addTarget:self action:@selector(circleBtnCallback) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton* hotBtn = [ UIButton buttonWithType:UIButtonTypeCustom ];
    hotBtn.frame = CGRectMake(FirstPosX+seprateWidth*1, 10, 100, 40);
    [hotBtn setTitle:@"热门" forState:UIControlStateNormal];
    [hotBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];

    [headView addSubview:hotBtn];
    [hotBtn addTarget:self action:@selector(hotBtnCallback) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton* collectBtn = [ UIButton buttonWithType:UIButtonTypeCustom ];
    collectBtn.frame = CGRectMake(FirstPosX+seprateWidth*3, 10, 100, 40);
    [collectBtn setTitle:@"收藏" forState:UIControlStateNormal];
    [collectBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];

    [headView addSubview:collectBtn];
    [collectBtn addTarget:self action:@selector(collectBtnCallback) forControlEvents:UIControlEventTouchUpInside];
    UIImageView* seprateLine = [[UIImageView alloc ] initWithImage:[UIImage imageNamed:@"Night_ZHActionDivider_iOS7@2x.png"]];
    seprateLine.frame = CGRectMake(0, 0, ScreenWidth, ScreenHeight);
    [self.view addSubview:seprateLine];
    
    [self.view addSubview:headView];
}
-(void)recommendBtnCallback{
    [myScrollView scrollRectToVisible:CGRectMake(0, 0, ScreenWidth, ScreenHeight) animated:YES];
    
}
-(void)circleBtnCallback{
 [myScrollView scrollRectToVisible:CGRectMake(ScreenWidth*2, 0, ScreenWidth, ScreenHeight) animated:YES];
}
-(void)hotBtnCallback{
 [myScrollView scrollRectToVisible:CGRectMake(ScreenWidth*1, 0, ScreenWidth, ScreenHeight) animated:YES];
}
-(void)collectBtnCallback{
 [myScrollView scrollRectToVisible:CGRectMake(ScreenWidth*3, 0, ScreenWidth, ScreenHeight) animated:YES];
}
-(void)initBottonSubViews{
    myScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 50, ScreenWidth, ScreenHeight)];
    
    myScrollView.contentSize = CGSizeMake(ScreenWidth*4, ScreenHeight);
    myScrollView.backgroundColor = [UIColor lightGrayColor];
    myScrollView.pagingEnabled = YES ;
    myScrollView.contentOffset = CGPointMake(0, 0) ;
    myScrollView.scrollEnabled = YES ;
    myScrollView.bounces = NO ;
    myScrollView.showsHorizontalScrollIndicator = NO ;
    myScrollView.showsVerticalScrollIndicator = NO ;
    myScrollView.delegate = self ;
    
    [self.view addSubview:myScrollView];
    
    
    myRecommoneTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight) style:UITableViewStylePlain];
    [myRecommoneTableView setDelegate:self];
    [myRecommoneTableView setDataSource:self];
    [myScrollView addSubview:myRecommoneTableView];
    [myRecommoneTableView reloadData];
    
    
    myCircleDeskTableView = [[UITableView alloc] initWithFrame:CGRectMake(ScreenWidth, 0, ScreenWidth, ScreenHeight) style:UITableViewStylePlain];
    [myCircleDeskTableView setDelegate:self];
    [myCircleDeskTableView setDataSource:self];
    [myScrollView addSubview:myCircleDeskTableView];
    [myCircleDeskTableView reloadData];
    
    
    myHotTableView = [[UITableView alloc] initWithFrame:CGRectMake(ScreenWidth*2, 0, ScreenWidth, ScreenHeight) style:UITableViewStylePlain];
    [myHotTableView setDelegate:self];
    [myHotTableView setDataSource:self];
    [myScrollView addSubview:myHotTableView];
    [myHotTableView reloadData];
    
    
    myCollectionTableView = [[UITableView alloc] initWithFrame:CGRectMake(ScreenWidth*3, 40, ScreenWidth, ScreenHeight) style:UITableViewStylePlain];
    [myCollectionTableView setDelegate:self];
    [myCollectionTableView setDataSource:self];
    [myScrollView addSubview:myCollectionTableView];
    [myCollectionTableView reloadData];
    
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
    if (tableView == myCollectionTableView) {
        return 5;
    }else if(tableView == myCircleDeskTableView){
        return 6;
    }else if(tableView == myHotTableView){
        return 7;
    }else if(tableView == myCollectionTableView){
        return 8;
    }
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *  cell = [[UITableViewCell alloc] init];
    if (tableView == myCollectionTableView) {
        cell.backgroundColor = [UIColor grayColor];
    }else if(tableView == myCircleDeskTableView){
        cell.backgroundColor = [UIColor yellowColor];
    }else if(tableView == myHotTableView){
        cell.backgroundColor = [UIColor redColor];
    }else if(tableView == myCollectionTableView){
        cell.backgroundColor = [UIColor greenColor];

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



@end
