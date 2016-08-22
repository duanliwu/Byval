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
    
    NSArray * array = @[[UIColor redColor],[UIColor greenColor],[UIColor blueColor]];
    for ( int i = 0; i<3; i++) {
        UIButton * btn1 = [[UIButton alloc]initWithFrame:CGRectMake(100, 160+ i* 40, 80, 40)];
        btn1.backgroundColor = array[i];
        btn1.tag = 10+i;
        [btn1 addTarget:self action:@selector(changecolor:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn1];
    }
}
- (void)backOnClick:(UIButton *)sender
{
    UITextField * tf = (id)[self.view viewWithTag:2];
    [tf resignFirstResponder];
    //第三步 回传数据
    [self.delegate inputString:tf.text];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)changecolor:(UIButton *)btn
{
    if (btn.tag == 10) {
        [self.delegate setBackgroundColor:[UIColor redColor]];
    }else if (btn.tag == 11){
        [self.delegate setBackgroundColor:[UIColor greenColor]];

    }else{
        [self.delegate setBackgroundColor:[UIColor blueColor]];

    }
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITextField * tf = (id)[self.view viewWithTag:2];
    [tf resignFirstResponder];
}


@end
