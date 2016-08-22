//
//  MainViewController.h
//  SendMessageDemo
//
//  Created by qianfeng on 15/9/18.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController
//block传值
//1.发送方声明回调的block引用
@property (nonatomic, copy)void (^returnStrBlock)(NSString*);










@end
