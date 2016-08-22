//
//  MainViewController.m
//  SendMessageDemo
//
//  Created by qianfeng on 15/9/18.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    UITextField * tf = [[UITextField alloc]initWithFrame:CGRectMake(100, 40, 200, 40)];
    tf.borderStyle = UITextBorderStyleRoundedRect;
    tf.font = [UIFont systemFontOfSize:20];
    tf.tag = 2;
    [self.view addSubview:tf];
    
    UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 50)];
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"上一页" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(backOnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
- (void)backOnClick:(UIButton *)sender
{
    UITextField * tf = (id)[self.view viewWithTag:2];
    [tf resignFirstResponder];
    
    //第一步,创建一个携带数据的通知
    NSNotification * noti = [NSNotification notificationWithName:@"MyNotification" object:self userInfo:@{@"inputStr":tf.text}];
    //第一个参数是通知的名字，必填的，通过这个名字来监听这个通知
    //第二个参数是发送的对象，可以传入nil
    //第三个参数是字典，携带消息，如没有消息，传入nil
    
    //第二步，发送通知(使用通知中心来发送)
    [[NSNotificationCenter defaultCenter]postNotification:noti];
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
