//
//  ZHModel.h
//  
//
//  Created by yanyuling on 16/6/9.
//
//
//答案数据原型
#import <Foundation/Foundation.h>

@interface ZHModel : NSObject

@property(nonatomic,assign)NSInteger* answerUID;               //回答者uid
@property(nonatomic,assign)NSURL* answerURL;            //答案url
@property(nonatomic,assign)NSString* answerStr;         //答案正文

@property(nonatomic,assign) NSString* dataType;         //回答日期

@property(nonatomic,assign)NSInteger* agreeNumber;             //赞同数目
@property(nonatomic,assign)NSInteger* unagreeNumber;           //不赞同数据
@property(nonatomic,assign)NSTimer* createTime;         //创建时间
@property(nonatomic,assign)NSArray* discussArray;       //评论列表
@end
