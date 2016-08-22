//
//  RootViewController.m
//  SendMessageDemo
//
//  Created by qianfeng on 15/9/18.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "RootViewController.h"
#import "MainViewController.h"
#import "SingletonModel.h"

@interface RootViewController ()

@end

@implementation RootViewController
//通过单例赋值
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    UILabel * label = (id)[self.view viewWithTag:1];
    label.text = [SingletonModel shareSingletonModel].textString ;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 50)];
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"下一页" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(100, 300, 150, 50)];
    label.font = [UIFont systemFontOfSize:25];
    label.textColor = [UIColor blackColor];
    label.backgroundColor = [UIColor clearColor];
    label.tag = 1;
    [self.view addSubview:label];
}
- (void)onClick:(UIButton*)sender
{
    MainViewController * mainVC = [[MainViewController alloc]init];
    [self presentViewController:mainVC animated:YES completion:nil];
}



@end
