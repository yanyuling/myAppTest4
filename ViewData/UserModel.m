//
//  UserModel.m
//  
//
//  Created by yanyuling on 16/6/9.
//
//

#import "UserModel.h"

@implementation UserModel
- ( instancetype ) initUserWithUID : ( NSString * ) uID
                            nickName :(NSString*) nickName
                         headImgPath : ( NSString * ) headImgPath
                          followerNum: ( NSInteger * ) followerNum
                        followingNum : ( NSInteger * ) followingNum
                             address : ( NSString * ) address
                        loveTopicArr : ( NSArray * ) loveTopicArr
                            agreeNum : ( NSInteger * ) agreeNum
                            heartNum : ( NSInteger * ) heartNum
                         questionNum : ( NSInteger * ) questionNum
                          articleNum : ( NSInteger * ) articleNum {
    if ([super init]) {
        self.uID = uID;
        self.nickName = nickName;
        self.headImgPath = headImgPath;
        self.followerNum = followerNum;
        self.followingNum = followingNum;
        self.address = address;
        self.loveTopicArr = loveTopicArr;
        self.agreeNum = agreeNum;
        self.questionNum = questionNum;
        self.articleNum = articleNum;
        return self;
    }
    return nil;
}


+ ( instancetype ) createUserWithUID : ( NSString * ) uID
                            nickName :(NSString*) nickName
                         headImgPath : ( NSString * ) headImgPath
                          followerNum: ( NSInteger * ) followerNum
                        followingNum : ( NSInteger * ) followingNum
                             address : ( NSString * ) address
                        loveTopicArr : ( NSArray * ) loveTopicArr
                            agreeNum : ( NSInteger * ) agreeNum
                            heartNum : ( NSInteger * ) heartNum
                         questionNum : ( NSInteger * ) questionNum
                          articleNum : ( NSInteger * ) articleNum {
    
    UserModel * tmpModel = [[UserModel alloc] initUserWithUID:uID nickName:nickName headImgPath:headImgPath followerNum:followerNum followingNum:followingNum address:address  loveTopicArr:loveTopicArr agreeNum:agreeNum heartNum:heartNum questionNum:questionNum articleNum:articleNum];

    return tmpModel ;
    
    
}
// 释放内存
-(void)dealloc {
    self.uID = nil;
    self.nickName = nil;
    self.headImgPath = nil;
    self.followerNum = nil;
    self.followingNum = nil;
    self.address = nil;
    self.loveTopicArr = nil;
    self.agreeNum = nil;
    self.questionNum = nil;
    self.articleNum = nil;
}

@end
