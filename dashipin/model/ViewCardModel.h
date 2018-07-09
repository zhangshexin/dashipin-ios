//
//  ViewCardModel.h
//  dashipin
//
//  Created by zhangshexin on 2018/6/29.
//  Copyright © 2018年 dashipin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ViewCardModel : NSObject

@property(nonatomic,copy) NSString* photoUrl;//头像
@property(nonatomic,assign,getter=isV) BOOL v;//是否为大v
@property(nonatomic,copy) NSString* name;//用户名
@property(nonatomic,assign,getter=isAttention)BOOL* attention;//是否已关注
@property(nonatomic,copy) NSString* money;//金币数
@property(nonatomic,copy) NSString* title;//标题
@property(nonatomic,copy) NSString* intro;//简介
@property(nonatomic,copy) NSString* thumbnail;//缩略图
@property(nonatomic,copy) NSString* shareCount;//分享次数
@property(nonatomic,copy) NSString* commentCount;//评论次数
@property(nonatomic,copy) NSString* praiseCount;//点赞次数

@end
