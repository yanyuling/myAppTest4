//
//  HomePageDetailViewController.m
//  
//
//  Created by yanyuling on 16/6/10.
//
//

#import "HomePageDetailViewController.h"
#import "Define.h"
@interface HomePageDetailViewController ()

@end

@implementation HomePageDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    

    self.view.backgroundColor = [ UIColor whiteColor ] ;
    self.navigationItem.title = @"问题详情UI";
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"..." style:UIBarButtonItemStylePlain target:self action:@selector(rightBarItemCallBack)];
     UILabel* _uiLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight)];
    [self.view addSubview:_uiLabel];
    _uiLabel.textColor = [UIColor grayColor];
    _uiLabel.shadowColor = [UIColor blackColor];
//    _uiLabel.textAlignment = UITextAlignmentRight;
//    _uiLabel.adjustsFontSizeToFitWidth = YES;
//    _uiLabel.adjustsLetterSpacingToFitWidth =YES;
    _uiLabel.text = @"说的嘎嘎哈对景挂画近段时间价格绝对是个第三个是根据公司的价格绝对够简单回顾";
    
}
-(void)viewWillAppear:(BOOL)animated{
    self.navigationController.navigationBarHidden = NO;
}

-(void) rightBarItemCallBack{
    UIAlertView * myAlertView = [[UIAlertView alloc] initWithTitle:@"编辑信息" message:@"Test Demo" delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
    [myAlertView show];
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
