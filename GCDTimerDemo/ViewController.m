//
//  ViewController.m
//  GCDTimerDemo
//
//  Created by sShan on 16/12/29.
//  Copyright © 2016年 Shan. All rights reserved.
//

#import "ViewController.h"
#import "GCD_Timer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //
    GCD_Timer *timer1 = [GCD_Timer timerWithInterval:1 repeats:YES target:self selector:@selector(output)];
    GCD_Timer *timer2 = [GCD_Timer timerWithInterval:2 repeats:YES task:^{
        NSLog(@"timer-2打印");
    }];
    [timer2 resumeTimer];
    [timer1 resumeTimer];
}

- (void)output {
    NSLog(@"timer-1打印");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
