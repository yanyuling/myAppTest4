//
//  FirstViewController.h
//  
//
//  Created by yanyuling on 16/6/8.
//
//

#import <UIKit/UIKit.h>

@interface NotifyViewController : UIViewController<UITableViewDelegate,UITableViewDataSource,UIScrollViewDelegate,UIScrollViewAccessibilityDelegate>
@property (nonatomic,strong)UITableView* myNotifyTableView;
@property (nonatomic,strong)UITableView* myThanksTableView;
@property(nonatomic,strong)UIScrollView *myScrollView;
@end
