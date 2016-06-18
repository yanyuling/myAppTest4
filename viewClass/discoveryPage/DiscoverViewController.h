//
//  FirstViewController.h
//  
//
//  Created by yanyuling on 16/6/8.
//
//

#import <UIKit/UIKit.h>

@interface DiscoverViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate>
@property(nonatomic,strong)UIScrollView* myScrollView;
@property(nonatomic,strong)UITableView* myRecommoneTableView; //推荐列表
@property(nonatomic,strong)UITableView* myCircleDeskTableView; //圆桌列表
@property(nonatomic,strong)UITableView* myHotTableView; //热门列表
@property(nonatomic,strong)UITableView* myCollectionTableView; //收藏列表

@end
