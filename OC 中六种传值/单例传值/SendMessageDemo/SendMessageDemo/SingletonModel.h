//
//  SingletonModel.h
//  SendMessageDemo
//
//  Created by qianfeng on 15/9/18.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingletonModel : NSObject

//声明一个字符串属性
@property (nonatomic, strong) NSString *  textString;
//声明一个单例方法
+ (SingletonModel*)shareSingletonModel;














@end
