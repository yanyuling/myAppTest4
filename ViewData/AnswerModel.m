//
//  AnswerModel.m
//  
//
//  Created by yanyuling on 16/6/9.
//
//

#import "AnswerModel.h"

@implementation AnswerModel

-(instancetype)initWithCreatorUid:(NSString*) creatorUID
                         answerID:(NSString*)answerID
                       createTime:(NSString*)createTime
                    answerContent:(NSString*)answerContent
                       discussArr:(NSArray*)discussArr{
    if ([super init]) {
        self.creatorUID = creatorUID;
        self.answerID = answerID;
        self.createTime = createTime;
        self.answerContent = answerContent;
        self.discussArr = discussArr;
        return self;
    }
    return nil;
}


+(instancetype)createWithCreatorUid:(NSString*) creatorUID
                           answerID:(NSString*)answerID
                       createTime:(NSString*)createTime
                    answerContent:(NSString*)answerContent
                       discussArr:(NSArray*)discussArr{
    AnswerModel* tmpAnswer = [[AnswerModel alloc] initWithCreatorUid:creatorUID answerID:answerID createTime:createTime answerContent:answerContent discussArr:discussArr];
    return tmpAnswer;
    
}

-(void)dealloc {
    self.creatorUID = nil;
    self.answerID = nil;
    self.createTime = nil;
    self.answerContent = nil;
    self.discussArr = nil;
}

@end
