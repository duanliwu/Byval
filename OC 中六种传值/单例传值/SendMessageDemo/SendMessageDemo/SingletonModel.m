//
//  SingletonModel.m
//  SendMessageDemo
//
//  Created by qianfeng on 15/9/18.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "SingletonModel.h"

//静态实例，并且初始化
static SingletonModel * shareObj = nil;

@implementation SingletonModel
//实现单例方法
+ (SingletonModel*)shareSingletonModel{
    if (shareObj == nil) {
        shareObj = [[SingletonModel alloc]init];
    }
    return shareObj;
}






@end
