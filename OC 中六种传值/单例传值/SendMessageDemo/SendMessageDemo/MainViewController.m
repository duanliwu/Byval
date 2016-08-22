//
//  MainViewController.m
//  SendMessageDemo
//
//  Created by qianfeng on 15/9/18.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "MainViewController.h"
#import "SingletonModel.h"

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
    
    //给单例赋值
    [SingletonModel shareSingletonModel].textString = tf.text;
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
