//
//  QuestionModel.m
//  
//
//  Created by yanyuling on 16/6/9.
//
//

#import "QuestionModel.h"

@implementation QuestionModel

-(instancetype)initWithCreatorUid:(NSString*) creatorUID
                       questionID:(NSString*)questionID
                        quesTitle:(NSString*)quesTitle
                         quesDesc:(NSString*)quesDesc
                         topicArr:(NSArray*)topicArr
                      followerNum:(NSInteger*) followerNum
                        answerArr:(NSArray*)answerArr{
    if ([super init]) {
        self.creatorUID = creatorUID;
        self.questionID = questionID;
        self.quesTitle = quesTitle;
        self.quesDesc = quesDesc;
        self.topicArr =topicArr;
        self.followerNum = followerNum;
        self.answerArr = answerArr;
        return self;
    }
    return nil;
}


+(instancetype)createWithCreatorUid:(NSString*) creatorUID
                         questionID:(NSString*)questionID

                          quesTitle:(NSString*)quesTitle
                           quesDesc:(NSString*)quesDesc
                           topicArr:(NSArray*)topicArr
                        followerNum:(NSInteger*) followerNum
                          answerArr:(NSArray*)answerArr{
    QuestionModel* tmpModel = [[QuestionModel alloc] initWithCreatorUid:creatorUID questionID:questionID quesTitle:quesTitle quesDesc:quesDesc topicArr:topicArr followerNum:followerNum answerArr:answerArr];
    return tmpModel;
}
-(void)dealloc {
    self.creatorUID = nil;
    self.questionID = nil;
    self.quesTitle = nil;
    self.quesDesc = nil;
    self.topicArr =nil;
    self.followerNum = nil;
    self.answerArr = nil;
}

@end
