//
//  FirstViewController.h
//  
//
//  Created by yanyuling on 16/6/8.
//
//

#import <UIKit/UIKit.h>

@interface PrivateMsgViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong) UITableView* myTableView;
@end
