//
//  FirstViewController.h
//  
//
//  Created by yanyuling on 16/6/8.
//
//

#import <UIKit/UIKit.h>

@interface HomePageViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong) UITableView* myTableView;
@end
