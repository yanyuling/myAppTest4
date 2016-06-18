//
//  UserModel.h
//  
//
//  Created by yanyuling on 16/6/9.
//
//

#import <Foundation/Foundation.h>

@interface UserModel : NSObject

@property(nonatomic,assign) NSString* uID;          //用户UID
@property(nonatomic,assign) NSString* nickName;     //昵称
@property(nonatomic,assign) NSString* headImgPath;  //头像文件
@property(nonatomic,assign) NSInteger* answerNum;          //回答问题数
@property(nonatomic,assign) NSInteger* followerNum;        //关注者数量
@property(nonatomic,assign) NSInteger* followingNum;       //关注的人数
@property(nonatomic,assign)NSString* address;       //所在地
@property(nonatomic,assign)NSArray* loveTopicArr;   //喜欢的话题
@property(nonatomic,assign) NSInteger* agreeNum;           //赞同数量
@property(nonatomic,assign) NSInteger* heartNum;           //红心数量
@property(nonatomic,assign) NSInteger* questionNum;        //提出的问题数量
@property(nonatomic,assign) NSInteger* articleNum;         //文章数量

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
                          articleNum : ( NSInteger * ) articleNum ;


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
                          articleNum : ( NSInteger * ) articleNum ;


@end
