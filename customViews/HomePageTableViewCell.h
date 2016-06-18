//
//  HomePageTableViewCell.h
//  
//
//  Created by yanyuling on 16/6/9.
//
//

#import <UIKit/UIKit.h>

/*
 首页对应问题，
 */
@interface HomePageTableViewCell : UITableViewCell

@property(nonatomic,assign) NSString* questionID;   //问题id
@property(nonatomic,assign) NSString* agreeUid ;    //赞同者id
@property(nonatomic,assign) NSString* answerUid;    //回答者id
@property(nonatomic) NSInteger* agreeNum;
@end
