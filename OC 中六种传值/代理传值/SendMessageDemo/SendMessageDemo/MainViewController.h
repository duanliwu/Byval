//
//  MainViewController.h
//  SendMessageDemo
//
//  Created by qianfeng on 15/9/18.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <UIKit/UIKit.h>
//代理传值
//第一步：委托方发送声明协议，接收方遵从协议
@protocol MainViewControllerDelegate <NSObject>
//协议方法
- (void)inputString:(NSString*)str;

- (void)setBackgroundColor:(UIColor*)color;

@end


@interface MainViewController : UIViewController

//第二步委托方声明弱引用的id指针
@property (nonatomic, assign) id<MainViewControllerDelegate> delegate;


@end
