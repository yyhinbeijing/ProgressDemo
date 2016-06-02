//
//  ViewController.m
//  ProgressDemo
//
//  Created by 阳永辉 on 16/5/29.
//  Copyright © 2016年 netposa. All rights reserved.
//

#import "ViewController.h"
#import "TestView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIProgressView *progressView = [[UIProgressView alloc] init];
    progressView.progressImage = [UIImage imageNamed:@"进度条底.png"];
    progressView.trackImage = [UIImage imageNamed:@"进度条进度.png"];
    progressView.progress = 0.8;
    progressView.frame = CGRectMake(0, 66, 320, 40);
    
    TestView *testView = [[[NSBundle mainBundle] loadNibNamed:@"TestView" owner:self options:nil] lastObject];
    testView.backgroundColor = [UIColor redColor];
    testView.frame = CGRectMake(0, 70, 375/2, 300/2);
    [self.view addSubview:testView];
    
    
    
//    progressView.progress = 40;
    [self.view addSubview:progressView];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
