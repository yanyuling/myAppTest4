//
//  FirstViewController.h
//  
//
//  Created by yanyuling on 16/6/8.
//
//

#import <UIKit/UIKit.h>

@interface MoreViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)NSMutableDictionary* myDic;
@end
