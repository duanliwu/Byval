//
//  RootViewController.m
//  SendMessageDemo
//
//  Created by qianfeng on 15/9/18.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

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
    //第五步建立代理关系
    mainVC.delegate = self;
    
    [self presentViewController:mainVC animated:YES completion:nil];
}
//第六步实现回调方法
- (void)inputString:(NSString *)str
{
    UILabel * label = (id)[self.view viewWithTag:1];
    label.text = str;
}
- (void)setBackgroundColor:(UIColor *)color
{
    self.view.backgroundColor = color;
}

@end
