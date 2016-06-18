//
//  AnswerModel.h
//  
//
//  Created by yanyuling on 16/6/9.
//
//

#import <Foundation/Foundation.h>

@interface AnswerModel : NSObject

@property(nonatomic,assign)NSString* creatorUID;        //回答者uid
@property(nonatomic,assign)NSString* answerID;          //答案的id
@property(nonatomic,assign)NSString* createTime;        //回答日期
@property(nonatomic,assign)NSString* answerContent;     //答案正文
@property(nonatomic,assign)NSArray* discussArr;         //评论列表

-(instancetype)initWithCreatorUid:(NSString*) creatorUID
                         answerID:(NSString*)answerID
                        createTime:(NSString*)createTime
                        answerContent:(NSString*)answerContent
                       discussArr:(NSArray*)discussArr;


+(instancetype)createWithCreatorUid:(NSString*) creatorUID
                           answerID:(NSString*)answerID
                       createTime:(NSString*)createTime
                    answerContent:(NSString*)answerContent
                       discussArr:(NSArray*)discussArr;



@end
