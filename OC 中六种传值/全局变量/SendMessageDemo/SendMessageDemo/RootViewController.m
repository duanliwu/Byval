//
//  RootViewController.m
//  SendMessageDemo
//
//  Created by qianfeng on 15/9/18.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "RootViewController.h"
#import "MainViewController.h"
//3.引用声明在其他文件中的数据
extern NSString * inputStr;

@interface RootViewController ()

@end

@implementation RootViewController
//4.回到第一页时主动读取全局变量的数据
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    UILabel * label = (id)[self.view viewWithTag:1];
    label.text = inputStr;
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
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
