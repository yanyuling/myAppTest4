//
//  QuestionModel.h
//  
//
//  Created by yanyuling on 16/6/9.
//
//

#import <Foundation/Foundation.h>

@interface QuestionModel : NSObject
@property(nonatomic,assign)NSString* creatorUID;    //创建者uid
@property(nonatomic,assign)NSString* questionID;    //问题的id
@property(nonatomic,assign)NSString* quesTitle;     //问题标题
@property(nonatomic,assign)NSString* quesDesc;      //问题描述
@property(nonatomic,assign)NSArray * topicArr;      //问题话题列表
@property(nonatomic,assign)NSInteger* followerNum;          //问题关注人数
@property(nonatomic,assign)NSArray* answerArr;      //答案列表


-(instancetype)initWithCreatorUid:(NSString*) creatorUID
                       questionID:(NSString*)questionID
                       quesTitle:(NSString*)quesTitle
                    quesDesc:(NSString*)quesDesc
                       topicArr:(NSArray*)topicArr
                      followerNum:(NSInteger*) followerNum
                        answerArr:(NSArray*)answerArr;


+(instancetype)createWithCreatorUid:(NSString*) creatorUID
                         questionID:(NSString*)questionID
                        quesTitle:(NSString*)quesTitle
                         quesDesc:(NSString*)quesDesc
                         topicArr:(NSArray*)topicArr
                      followerNum:(NSInteger*) followerNum
                        answerArr:(NSArray*)answerArr;





@end
